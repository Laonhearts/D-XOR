import std.stdio;
import std.string;
import std.conv;

void main()
{
    // 사용자로부터 입력 받기
    write("암호화할 메시지를 입력하세요: ");
    string message = readln().strip();

    // XOR 암호화 키 정의 (임의로 예시로 7을 사용)
    int key = 7;

    // 암호화된 결과를 저장할 배열
    char[] encryptedMessage;

    // 각 문자에 대해 XOR 연산 수행
    foreach (char c; message)
    {
        char encryptedChar = c ^^ key;  // XOR 연산 수행
        encryptedMessage ~= encryptedChar;  // 결과를 배열에 추가
    }

    // 암호화된 메시지 출력
    writeln("암호화된 메시지: ", cast(string)encryptedMessage);
}
