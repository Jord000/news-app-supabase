import articles from "./articles.js";
import { writeFile } from 'fs/promises'
import comments from "./comments.js";

function jsonCreatedAtToPostgresTimestamp(jsonArray) {
    try {
        return jsonArray.map(jsonData => {
            const createdAt = jsonData.created_at;
            if (createdAt) {
                // Assuming createdAt is in the format 'YYYY-MM-DD HH:MI:SS'
                const dateTimeObj = new Date(createdAt);
                const postgresTimestamp = dateTimeObj.toISOString().slice(0, 19).replace('T', ' ');
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
        await writeFile(fileName, `export default ${jsonData};`, 'utf8');
        console.log(`Data has been successfully written to ${fileName}`);
    } catch (error) {
        console.error("Error:", error);
    }
}


async function convertJsonToCsv(data, fileName) {
    try {
        // Extracting the keys from the first object to use as column headers
        const keys = Object.keys(data[0]);

        // Creating CSV content
        let csvContent = keys.join(',') + '\n'; // Headers

        // Adding rows
        data.forEach(obj => {
            const row = keys.map(key => {
                let value = obj[key];
                // If the value contains a comma, surround it with double quotes
                if (value && value.includes(',')) {
                    value = `"${value}"`;
                }
                return value;
            });
            csvContent += row.join(',') + '\n';
        });

        // Write CSV content to file
        await writeFile(fileName, csvContent, 'utf8');
        console.log(`Data has been successfully written to ${fileName}`);
    } catch (error) {
        console.error("Error:", error);
    }
}

const convertArticles = jsonCreatedAtToPostgresTimestamp(articles)
const convertComments = jsonCreatedAtToPostgresTimestamp(comments)

writeDataToFile(convertArticles,'articles.js')
writeDataToFile(convertComments,'comments.js')

convertJsonToCsv(articles,'articles.csv')
convertJsonToCsv(comments,'comments.csv')