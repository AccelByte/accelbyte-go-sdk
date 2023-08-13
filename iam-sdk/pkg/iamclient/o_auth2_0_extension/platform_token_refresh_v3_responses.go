// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

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

// PlatformTokenRefreshV3Reader is a Reader for the PlatformTokenRefreshV3 structure.
type PlatformTokenRefreshV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformTokenRefreshV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPlatformTokenRefreshV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPlatformTokenRefreshV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPlatformTokenRefreshV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPlatformTokenRefreshV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewPlatformTokenRefreshV3ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/v3/platforms/{platformId}/token/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPlatformTokenRefreshV3OK creates a PlatformTokenRefreshV3OK with default headers values
func NewPlatformTokenRefreshV3OK() *PlatformTokenRefreshV3OK {
	return &PlatformTokenRefreshV3OK{}
}

/*PlatformTokenRefreshV3OK handles this case with default header values.

  Token returned
*/
type PlatformTokenRefreshV3OK struct {
	Payload *iamclientmodels.OauthmodelPlatformTokenRefreshResponseV3
}

func (o *PlatformTokenRefreshV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3OK  %+v", 200, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3OK) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3OK) GetPayload() *iamclientmodels.OauthmodelPlatformTokenRefreshResponseV3 {
	return o.Payload
}

func (o *PlatformTokenRefreshV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelPlatformTokenRefreshResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPlatformTokenRefreshV3BadRequest creates a PlatformTokenRefreshV3BadRequest with default headers values
func NewPlatformTokenRefreshV3BadRequest() *PlatformTokenRefreshV3BadRequest {
	return &PlatformTokenRefreshV3BadRequest{}
}

/*PlatformTokenRefreshV3BadRequest handles this case with default header values.

  General request error
*/
type PlatformTokenRefreshV3BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRefreshV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3BadRequest) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRefreshV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenRefreshV3Unauthorized creates a PlatformTokenRefreshV3Unauthorized with default headers values
func NewPlatformTokenRefreshV3Unauthorized() *PlatformTokenRefreshV3Unauthorized {
	return &PlatformTokenRefreshV3Unauthorized{}
}

/*PlatformTokenRefreshV3Unauthorized handles this case with default header values.

  Client authentication failed
*/
type PlatformTokenRefreshV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRefreshV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3Unauthorized) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRefreshV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenRefreshV3Forbidden creates a PlatformTokenRefreshV3Forbidden with default headers values
func NewPlatformTokenRefreshV3Forbidden() *PlatformTokenRefreshV3Forbidden {
	return &PlatformTokenRefreshV3Forbidden{}
}

/*PlatformTokenRefreshV3Forbidden handles this case with default header values.

  Forbidden
*/
type PlatformTokenRefreshV3Forbidden struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRefreshV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3Forbidden) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3Forbidden) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRefreshV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenRefreshV3ServiceUnavailable creates a PlatformTokenRefreshV3ServiceUnavailable with default headers values
func NewPlatformTokenRefreshV3ServiceUnavailable() *PlatformTokenRefreshV3ServiceUnavailable {
	return &PlatformTokenRefreshV3ServiceUnavailable{}
}

/*PlatformTokenRefreshV3ServiceUnavailable handles this case with default header values.

  Third Party Server timeout or unavailable
*/
type PlatformTokenRefreshV3ServiceUnavailable struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRefreshV3ServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3ServiceUnavailable) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3ServiceUnavailable) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRefreshV3ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
