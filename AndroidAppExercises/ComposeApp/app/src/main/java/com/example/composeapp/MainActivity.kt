package com.example.composeapp

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.example.composeapp.ui.theme.ComposeAppTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MessageCard(msg = Message(author = "Android", body = "Jet Compose"))
        }
    }
}

data class Message(val author:String, val body : String)

@Composable
fun MessageCard(msg : Message) {
    Column {
        Text(msg.author)
        Text(msg.body)
    }
}

@Preview
@Composable
fun PreviewMessageCard() {
    MessageCard(msg = Message("Lexi", "Hey, take a look at Jetpack Compose, it's great!"))
}
