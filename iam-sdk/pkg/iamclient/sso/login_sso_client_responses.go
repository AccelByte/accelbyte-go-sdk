// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// LoginSSOClientReader is a Reader for the LoginSSOClient structure.
type LoginSSOClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *LoginSSOClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewLoginSSOClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/sso/{platformId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewLoginSSOClientOK creates a LoginSSOClientOK with default headers values
func NewLoginSSOClientOK() *LoginSSOClientOK {
	return &LoginSSOClientOK{}
}

/*LoginSSOClientOK handles this case with default header values.

  OK
*/
type LoginSSOClientOK struct {
}

func (o *LoginSSOClientOK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/sso/{platformId}][%d] loginSsoClientOK ", 200)
}

func (o *LoginSSOClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
