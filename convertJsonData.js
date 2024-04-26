import articles from "./articles.js";
import { writeFile } from "fs/promises";
import comments from "./comments.js";

function jsonCreatedAtToPostgresTimestamp(jsonArray) {
  try {
    return jsonArray.map((jsonData) => {
      const createdAt = jsonData.created_at;
      if (createdAt) {
        // Assuming createdAt is in the format 'YYYY-MM-DD HH:MI:SS'
        const dateTimeObj = new Date(createdAt);
        const postgresTimestamp = dateTimeObj
          .toISOString()
          .slice(0, 19)
          .replace("T", " ");
        return { ...jsonData, created_at: postgresTimestamp };
      } else {
        return jsonData;
      }
    });
  } catch (error) {
    console.error("Error:", error);
    return null;
  }
}

async function writeDataToFile(data, fileName) {
  try {
    const jsonData = JSON.stringify(data, null, 2);
    const exportFileName = fileName.replace(".js", "");
    await writeFile(
      `${exportFileName}Converted.js`,
      `export default ${jsonData};`,
      "utf8"
    );
    console.log(
      `Data has been successfully written to ${exportFileName}Converted.js`
    );
  } catch (error) {
    console.error("Error:", error);
  }
}

async function convertJsonToCsv(data, fileName) {
    try {
        const keys = Object.keys(data[0]);
        let csvContent = keys.join(',') + '\n'; // Headers

        data.forEach(obj => {
            const row = keys.map(key => {
                let value = obj[key];
                if (typeof value === 'string' && value.includes(',')) {
                    value = `"${value}"`;
                } else if (typeof value === 'number') {
                    value = value.toString(); // Convert number to string
                }
                return value;
            });
            csvContent += row.join(',') + '\n';
        });

        await writeFile(fileName, csvContent, 'utf8');
        console.log(`Data has been successfully written to ${fileName}`);
    } catch (error) {
        console.error("Error:", error);
    }
}


const convertArticles = jsonCreatedAtToPostgresTimestamp(articles);
const convertComments = jsonCreatedAtToPostgresTimestamp(comments);

await writeDataToFile(convertArticles, "articles.js");
await writeDataToFile(convertComments, "comments.js");

import convertedArticles from "./articlesConverted.js"
import convertedComments from "./commentsConverted.js"

convertJsonToCsv(convertedArticles, "articles.csv");
convertJsonToCsv(convertedComments, "comments.csv");
