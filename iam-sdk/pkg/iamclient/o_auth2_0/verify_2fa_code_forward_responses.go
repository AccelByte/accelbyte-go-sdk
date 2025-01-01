// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// Verify2FACodeForwardReader is a Reader for the Verify2FACodeForward structure.
type Verify2FACodeForwardReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *Verify2FACodeForwardReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 302:
		result := NewVerify2FACodeForwardFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/mfa/verify/forward returns an error %d: %s", response.Code(), string(data))
	}
}

// NewVerify2FACodeForwardFound creates a Verify2FACodeForwardFound with default headers values
func NewVerify2FACodeForwardFound() *Verify2FACodeForwardFound {
	return &Verify2FACodeForwardFound{}
}

/*Verify2FACodeForwardFound handles this case with default header values.

  Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter
*/
type Verify2FACodeForwardFound struct {
	Location string
}

func (o *Verify2FACodeForwardFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/verify/forward][%d] verify2faCodeForwardFound ", 302)
}

func (o *Verify2FACodeForwardFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response header Location
	o.Location = response.GetHeader("Location")

	return nil
}
