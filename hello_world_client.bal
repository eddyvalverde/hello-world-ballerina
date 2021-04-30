import ballerina/http;
import ballerina/io;
public function main() returns @tainted error? {
    http:Client clientEP = check new ("http://www.mocky.io");

    string payload = check clientEP->get("/v2/5ae082123200006b00510c3d/",
                                targetType = string);

    io:println(payload);
}