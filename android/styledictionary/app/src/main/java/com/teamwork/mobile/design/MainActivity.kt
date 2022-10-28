package com.teamwork.mobile.design

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.Column
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.compositionLocalOf
import com.teamwork.design.generated.DarkColors
import com.teamwork.design.generated.LightColors

class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            TeamworkTheme {
                Column {
                    Text(
                        text = "Hello!",
                        style = com.teamwork.design.generated.Typography.bodySmall,
                        color = TwColor.colorTextOnDecorative01
                    )
                }
            }
        }
    }

}

@Composable
fun TeamworkTheme(content: @Composable () -> Unit) {
    MaterialTheme {
        // Calculate elevations based on the system theme
        val teamworkColors = if (isSystemInDarkTheme()) {
            DarkColors
        } else {
            LightColors
        }

        // Bind elevation as the value for LocalElevations
        CompositionLocalProvider(LocalTeamworkColors provides teamworkColors) {
            content()
        }
    }
}


val LocalTeamworkColors = compositionLocalOf { LightColors }

val TwColor
    @Composable
    get() = LocalTeamworkColors.current
