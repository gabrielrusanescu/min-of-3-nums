int a = 5;
int b = 3;
int c = 8;

int main() {
    int min;
    if (a < b) {
        min = a;
    } else {
        min = b;
    }
    if (c < min) {
        min = c;
    }
    return min; 
}