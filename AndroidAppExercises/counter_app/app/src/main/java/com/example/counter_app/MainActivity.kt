package com.example.counter_app

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.example.counter_app.ui.theme.Counter_appTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        var count = 0
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val incButton = findViewById<Button>(R.id.button_inc)
        val decButton = findViewById<Button>(R.id.button_dec)
        val resetButton = findViewById<Button>(R.id.button_reset_count)
        var countText = findViewById<TextView>(R.id.textView)

        incButton.setOnClickListener {
            count++
            countText.text = "$count"
        }
        decButton.setOnClickListener {
            count--
            countText.text = "$count"
        }
        resetButton.setOnClickListener {
            count = 0
            countText.text = "$count"
        }

    }
}