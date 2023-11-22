
import 'package:cloud_firestore/cloud_firestore.dart';


final db = FirebaseFirestore.instance;
String username = "rodrickkamsiyonna#08041673409";
void SendDistress(){
  final docRef  = db.collection("users").doc(username);
  docRef.get().then(
        (DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      List<dynamic>  friends =  data["friends"] as List<dynamic>;
      for( dynamic friend_id in friends){
       final friendRef =  db.collection("users").doc(friend_id as String);
       friendRef.update({
         "requests": FieldValue.arrayUnion([username]),
       });
      }
    },
    onError: (e) => print("Error getting document: $e"),
  );
}

List<String> getImageListRequest(){
  List<String> images = [];
  final docRef  = db.collection("users").doc(username);
  docRef.get().then(
        (DocumentSnapshot doc) {
      final data = doc.data() as Map<String, dynamic>;
      List<String>  friends =  data["requests"] as List<String>;
      for(String friend_id in friends){
        final  requestRef =  db.collection("users").doc(friend_id);
        requestRef.get().then((DocumentSnapshot doc){
          final data = doc.data() as Map<String, dynamic>;
          images.add(data["user_image"]);
        });
      }
    },
    onError: (e) => print("Error getting document: $e"),
  );
  return images;
}

void ListenForRequest(Function  fucntion, Function notify){
  final docRef = db.collection("users").doc(username);
  docRef.snapshots().listen(
        (event) => fucntion(),
        onDone: notify(),
        onError: (error) => print("Listen failed: $error"),
  );
}