package com.teamwork.mobile.design

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.ui.Modifier
import com.teamwork.design.TeamworkTheme

class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            TeamworkTheme {
                Surface(
                    modifier = Modifier.fillMaxSize()
                ) {
                    Column {
                        Text(
                            text = "headlineLarge",
                            style = TeamworkTheme.typography.headlineLarge
                        )
                        Text(
                            text = "headlineMedium",
                            style = TeamworkTheme.typography.headlineMedium
                        )
                        Text(
                            modifier = Modifier.border(
                                border = BorderStroke(
                                    width = TeamworkTheme.borderWidth.sm,
                                    color = TeamworkTheme.color.border.borderSuccessHover
                                )
                            ),
                            text = "headlineSmall",
                            style = TeamworkTheme.typography.headlineSmall
                        )
                        Text(
                            text = "bodyMedium",
                            style = TeamworkTheme.typography.bodyMedium
                        )
                        Text(
                            text = "bodySmall",
                            style = TeamworkTheme.typography.bodySmall
                        )

                        Button(
                            onClick = { /*TODO*/ },
                            colors = ButtonDefaults.buttonColors(
                                containerColor = TeamworkTheme.color.surface.surfaceActionDefault
                            )
                        ) {
                            Text(
                                text = "colorSurfaceActionDefault"
                            )
                        }
                        Button(
                            onClick = { /*TODO*/ },
                            colors = ButtonDefaults.buttonColors(
                                containerColor = TeamworkTheme.color.surface.surfaceCriticalDefault
                            )
                        ) {
                            Text(
                                text = "colorSurfaceCriticalDefault"
                            )
                        }
                    }
                }
            }
        }
    }

}
