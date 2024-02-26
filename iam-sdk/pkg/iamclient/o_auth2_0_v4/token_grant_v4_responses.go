// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

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

// TokenGrantV4Reader is a Reader for the TokenGrantV4 structure.
type TokenGrantV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TokenGrantV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTokenGrantV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 202:
		result := NewTokenGrantV4Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewTokenGrantV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewTokenGrantV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewTokenGrantV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewTokenGrantV4TooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/oauth/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTokenGrantV4OK creates a TokenGrantV4OK with default headers values
func NewTokenGrantV4OK() *TokenGrantV4OK {
	return &TokenGrantV4OK{}
}

/*TokenGrantV4OK handles this case with default header values.

  Token returned
*/
type TokenGrantV4OK struct {
	Payload *iamclientmodels.OauthmodelTokenWithDeviceCookieResponseV3
}

func (o *TokenGrantV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/token][%d] tokenGrantV4OK  %+v", 200, o.ToJSONString())
}

func (o *TokenGrantV4OK) ToJSONString() string {
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

func (o *TokenGrantV4OK) GetPayload() *iamclientmodels.OauthmodelTokenWithDeviceCookieResponseV3 {
	return o.Payload
}

func (o *TokenGrantV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewTokenGrantV4Accepted creates a TokenGrantV4Accepted with default headers values
func NewTokenGrantV4Accepted() *TokenGrantV4Accepted {
	return &TokenGrantV4Accepted{}
}

/*TokenGrantV4Accepted handles this case with default header values.

  Login ticket returned
*/
type TokenGrantV4Accepted struct {
	Payload *iamclientmodels.OauthmodelLoginQueueTicketResponse
}

func (o *TokenGrantV4Accepted) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/token][%d] tokenGrantV4Accepted  %+v", 202, o.ToJSONString())
}

func (o *TokenGrantV4Accepted) ToJSONString() string {
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

func (o *TokenGrantV4Accepted) GetPayload() *iamclientmodels.OauthmodelLoginQueueTicketResponse {
	return o.Payload
}

func (o *TokenGrantV4Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelLoginQueueTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewTokenGrantV4BadRequest creates a TokenGrantV4BadRequest with default headers values
func NewTokenGrantV4BadRequest() *TokenGrantV4BadRequest {
	return &TokenGrantV4BadRequest{}
}

/*TokenGrantV4BadRequest handles this case with default header values.

  InvalidRequest
*/
type TokenGrantV4BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/token][%d] tokenGrantV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *TokenGrantV4BadRequest) ToJSONString() string {
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

func (o *TokenGrantV4BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewTokenGrantV4Unauthorized creates a TokenGrantV4Unauthorized with default headers values
func NewTokenGrantV4Unauthorized() *TokenGrantV4Unauthorized {
	return &TokenGrantV4Unauthorized{}
}

/*TokenGrantV4Unauthorized handles this case with default header values.

  Client authentication failed
*/
type TokenGrantV4Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/token][%d] tokenGrantV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *TokenGrantV4Unauthorized) ToJSONString() string {
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

func (o *TokenGrantV4Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewTokenGrantV4Forbidden creates a TokenGrantV4Forbidden with default headers values
func NewTokenGrantV4Forbidden() *TokenGrantV4Forbidden {
	return &TokenGrantV4Forbidden{}
}

/*TokenGrantV4Forbidden handles this case with default header values.

  Unauthorized access
*/
type TokenGrantV4Forbidden struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/token][%d] tokenGrantV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *TokenGrantV4Forbidden) ToJSONString() string {
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

func (o *TokenGrantV4Forbidden) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewTokenGrantV4TooManyRequests creates a TokenGrantV4TooManyRequests with default headers values
func NewTokenGrantV4TooManyRequests() *TokenGrantV4TooManyRequests {
	return &TokenGrantV4TooManyRequests{}
}

/*TokenGrantV4TooManyRequests handles this case with default header values.

  Too many failed auth attempt
*/
type TokenGrantV4TooManyRequests struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *TokenGrantV4TooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/token][%d] tokenGrantV4TooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *TokenGrantV4TooManyRequests) ToJSONString() string {
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

func (o *TokenGrantV4TooManyRequests) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *TokenGrantV4TooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
