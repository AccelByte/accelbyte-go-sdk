// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// VerifyTokenReader is a Reader for the VerifyToken structure.
type VerifyTokenReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *VerifyTokenReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewVerifyTokenOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewVerifyTokenBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/oauth/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewVerifyTokenOK creates a VerifyTokenOK with default headers values
func NewVerifyTokenOK() *VerifyTokenOK {
	return &VerifyTokenOK{}
}

/*VerifyTokenOK handles this case with default header values.

  Access Token verified
*/
type VerifyTokenOK struct {
	Payload *iamclientmodels.OauthmodelTokenResponse
}

func (o *VerifyTokenOK) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/verify][%d] verifyTokenOK  %+v", 200, o.ToJSONString())
}

func (o *VerifyTokenOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *VerifyTokenOK) GetPayload() *iamclientmodels.OauthmodelTokenResponse {
	return o.Payload
}

func (o *VerifyTokenOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewVerifyTokenBadRequest creates a VerifyTokenBadRequest with default headers values
func NewVerifyTokenBadRequest() *VerifyTokenBadRequest {
	return &VerifyTokenBadRequest{}
}

/*VerifyTokenBadRequest handles this case with default header values.

  Access Token not exist or expired
*/
type VerifyTokenBadRequest struct {
}

func (o *VerifyTokenBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/oauth/verify][%d] verifyTokenBadRequest ", 400)
}

func (o *VerifyTokenBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
