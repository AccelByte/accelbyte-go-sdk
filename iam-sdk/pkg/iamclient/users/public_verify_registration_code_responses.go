// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// PublicVerifyRegistrationCodeReader is a Reader for the PublicVerifyRegistrationCode structure.
type PublicVerifyRegistrationCodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicVerifyRegistrationCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicVerifyRegistrationCodeNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicVerifyRegistrationCodeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/code/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicVerifyRegistrationCodeNoContent creates a PublicVerifyRegistrationCodeNoContent with default headers values
func NewPublicVerifyRegistrationCodeNoContent() *PublicVerifyRegistrationCodeNoContent {
	return &PublicVerifyRegistrationCodeNoContent{}
}

/*PublicVerifyRegistrationCodeNoContent handles this case with default header values.

  Code is valid
*/
type PublicVerifyRegistrationCodeNoContent struct {
}

func (o *PublicVerifyRegistrationCodeNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/code/verify][%d] publicVerifyRegistrationCodeNoContent ", 204)
}

func (o *PublicVerifyRegistrationCodeNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicVerifyRegistrationCodeBadRequest creates a PublicVerifyRegistrationCodeBadRequest with default headers values
func NewPublicVerifyRegistrationCodeBadRequest() *PublicVerifyRegistrationCodeBadRequest {
	return &PublicVerifyRegistrationCodeBadRequest{}
}

/*PublicVerifyRegistrationCodeBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10138</td><td>code not match</td></tr></table>
*/
type PublicVerifyRegistrationCodeBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicVerifyRegistrationCodeBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/code/verify][%d] publicVerifyRegistrationCodeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicVerifyRegistrationCodeBadRequest) ToJSONString() string {
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

func (o *PublicVerifyRegistrationCodeBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicVerifyRegistrationCodeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
