// _MyHomePageState in your main.dart file should look something like this

class _MyHomePageState extends State<MyHomePage> {

  Random rand = Random();
  Color currentColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Generate Random Color:",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.symmetric(vertical: 30),
              color: currentColor,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentColor = Color.fromRGBO(
                      rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1
                  );
                });
              },
              child: const Text("Click me"),
            )
          ],
        ),
      ),
    );
  }

}