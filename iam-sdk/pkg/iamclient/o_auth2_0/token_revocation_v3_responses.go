// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// TokenRevocationV3Reader is a Reader for the TokenRevocationV3 structure.
type TokenRevocationV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TokenRevocationV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTokenRevocationV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewTokenRevocationV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewTokenRevocationV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/revoke returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTokenRevocationV3OK creates a TokenRevocationV3OK with default headers values
func NewTokenRevocationV3OK() *TokenRevocationV3OK {
	return &TokenRevocationV3OK{}
}

/*TokenRevocationV3OK handles this case with default header values.

  Token revoked or does not exist
*/
type TokenRevocationV3OK struct {
}

func (o *TokenRevocationV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/revoke][%d] tokenRevocationV3OK ", 200)
}

func (o *TokenRevocationV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewTokenRevocationV3BadRequest creates a TokenRevocationV3BadRequest with default headers values
func NewTokenRevocationV3BadRequest() *TokenRevocationV3BadRequest {
	return &TokenRevocationV3BadRequest{}
}

/*TokenRevocationV3BadRequest handles this case with default header values.

  Invalid input
*/
type TokenRevocationV3BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenRevocationV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/revoke][%d] tokenRevocationV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *TokenRevocationV3BadRequest) ToJSONString() string {
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

func (o *TokenRevocationV3BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenRevocationV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewTokenRevocationV3Unauthorized creates a TokenRevocationV3Unauthorized with default headers values
func NewTokenRevocationV3Unauthorized() *TokenRevocationV3Unauthorized {
	return &TokenRevocationV3Unauthorized{}
}

/*TokenRevocationV3Unauthorized handles this case with default header values.

  Invalid basic auth header
*/
type TokenRevocationV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenRevocationV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/revoke][%d] tokenRevocationV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *TokenRevocationV3Unauthorized) ToJSONString() string {
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

func (o *TokenRevocationV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenRevocationV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
