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

// TokenGrantV3Reader is a Reader for the TokenGrantV3 structure.
type TokenGrantV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TokenGrantV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTokenGrantV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewTokenGrantV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewTokenGrantV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewTokenGrantV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewTokenGrantV3TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTokenGrantV3OK creates a TokenGrantV3OK with default headers values
func NewTokenGrantV3OK() *TokenGrantV3OK {
	return &TokenGrantV3OK{}
}

/*TokenGrantV3OK handles this case with default header values.

  Token returned
*/
type TokenGrantV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenWithDeviceCookieResponseV3
}

func (o *TokenGrantV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/token][%d] tokenGrantV3OK  %+v", 200, o.ToJSONString())
}

func (o *TokenGrantV3OK) ToJSONString() string {
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

func (o *TokenGrantV3OK) GetPayload() *iamclientmodels.OauthmodelTokenWithDeviceCookieResponseV3 {
	return o.Payload
}

func (o *TokenGrantV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenWithDeviceCookieResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewTokenGrantV3BadRequest creates a TokenGrantV3BadRequest with default headers values
func NewTokenGrantV3BadRequest() *TokenGrantV3BadRequest {
	return &TokenGrantV3BadRequest{}
}

/*TokenGrantV3BadRequest handles this case with default header values.

  InvalidRequest
*/
type TokenGrantV3BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/token][%d] tokenGrantV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *TokenGrantV3BadRequest) ToJSONString() string {
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

func (o *TokenGrantV3BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewTokenGrantV3Unauthorized creates a TokenGrantV3Unauthorized with default headers values
func NewTokenGrantV3Unauthorized() *TokenGrantV3Unauthorized {
	return &TokenGrantV3Unauthorized{}
}

/*TokenGrantV3Unauthorized handles this case with default header values.

  Client authentication failed
*/
type TokenGrantV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/token][%d] tokenGrantV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *TokenGrantV3Unauthorized) ToJSONString() string {
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

func (o *TokenGrantV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewTokenGrantV3Forbidden creates a TokenGrantV3Forbidden with default headers values
func NewTokenGrantV3Forbidden() *TokenGrantV3Forbidden {
	return &TokenGrantV3Forbidden{}
}

/*TokenGrantV3Forbidden handles this case with default header values.

  Unauthorized access
*/
type TokenGrantV3Forbidden struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/token][%d] tokenGrantV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *TokenGrantV3Forbidden) ToJSONString() string {
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

func (o *TokenGrantV3Forbidden) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewTokenGrantV3TooManyRequests creates a TokenGrantV3TooManyRequests with default headers values
func NewTokenGrantV3TooManyRequests() *TokenGrantV3TooManyRequests {
	return &TokenGrantV3TooManyRequests{}
}

/*TokenGrantV3TooManyRequests handles this case with default header values.

  Too many failed auth attempt
*/
type TokenGrantV3TooManyRequests struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantV3TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/token][%d] tokenGrantV3TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *TokenGrantV3TooManyRequests) ToJSONString() string {
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

func (o *TokenGrantV3TooManyRequests) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantV3TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
