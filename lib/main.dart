import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith( ek baar emulator ko bnd krke fir se launch karo dear ye task manager par performance kholo theek hai run karo run  task manag bnd karo
      //   textTheme: TextTheme( lo dear problem fix okthnku itsmy pleasure oye bnd kyu kar rhi ho? ho toh gya kyaa emulator run bss yehi karna tha hn app complete ?nhi emulator ni chlratha
      // acha to  isliye kaam nhi hua?hnok or java ka kya?vo kra tha age ho rha hai naahnsmjh aa rha hai?Hnnache se?ji sure na?hnnnjjiiii pkka na?ni phir theek haihahaha matlb sab theek hai fon kislye karna  tha?kch nii
      //  aram se btaungi lekin hai kyaa baat  aise ni ruko thda time kitna?10-12 jnm ye mera aakhri hai h dearohhhh acha chlo btaungi thde dino mein  koi tnsn wali cheez to nhi hai naanahh nahh mummy theek h hnn bdiyaa tension vali koi bat ni h
      //  sure naahn oye kya hua?kch ni chlo mei bnd krri hhoo laptop haa zarur charging 
      //     body1: TextStyle(color: Colors.black54),
      //   ), run karne ko kisne bola?mne vaise hi krdiya tha ye bhi theek hai  jao phle jo jaruri kaam hai usko karlo fir dekhte  okmein khanakhari hoo to chup chap khao bss ue chlatoh h ni kyaa?
      // ), firebase open karna to...
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'login_screen': (context) => LoginScreen(),
        'chat_screen': (context) => ChatScreen(),
      },
    );
  }
}
