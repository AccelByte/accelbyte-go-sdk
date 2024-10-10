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

// PlatformTokenGrantV3Reader is a Reader for the PlatformTokenGrantV3 structure.
type PlatformTokenGrantV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformTokenGrantV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPlatformTokenGrantV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPlatformTokenGrantV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPlatformTokenGrantV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPlatformTokenGrantV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewPlatformTokenGrantV3ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/platforms/{platformId}/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPlatformTokenGrantV3OK creates a PlatformTokenGrantV3OK with default headers values
func NewPlatformTokenGrantV3OK() *PlatformTokenGrantV3OK {
	return &PlatformTokenGrantV3OK{}
}

/*PlatformTokenGrantV3OK handles this case with default header values.

  Token returned
*/
type PlatformTokenGrantV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponse
}

func (o *PlatformTokenGrantV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/platforms/{platformId}/token][%d] platformTokenGrantV3OK  %+v", 200, o.ToJSONString())
}

func (o *PlatformTokenGrantV3OK) ToJSONString() string {
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

func (o *PlatformTokenGrantV3OK) GetPayload() *iamclientmodels.OauthmodelTokenResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPlatformTokenGrantV3BadRequest creates a PlatformTokenGrantV3BadRequest with default headers values
func NewPlatformTokenGrantV3BadRequest() *PlatformTokenGrantV3BadRequest {
	return &PlatformTokenGrantV3BadRequest{}
}

/*PlatformTokenGrantV3BadRequest handles this case with default header values.

  General request error
*/
type PlatformTokenGrantV3BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/platforms/{platformId}/token][%d] platformTokenGrantV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PlatformTokenGrantV3BadRequest) ToJSONString() string {
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

func (o *PlatformTokenGrantV3BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPlatformTokenGrantV3Unauthorized creates a PlatformTokenGrantV3Unauthorized with default headers values
func NewPlatformTokenGrantV3Unauthorized() *PlatformTokenGrantV3Unauthorized {
	return &PlatformTokenGrantV3Unauthorized{}
}

/*PlatformTokenGrantV3Unauthorized handles this case with default header values.

  Client authentication failed
*/
type PlatformTokenGrantV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/platforms/{platformId}/token][%d] platformTokenGrantV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PlatformTokenGrantV3Unauthorized) ToJSONString() string {
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

func (o *PlatformTokenGrantV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPlatformTokenGrantV3Forbidden creates a PlatformTokenGrantV3Forbidden with default headers values
func NewPlatformTokenGrantV3Forbidden() *PlatformTokenGrantV3Forbidden {
	return &PlatformTokenGrantV3Forbidden{}
}

/*PlatformTokenGrantV3Forbidden handles this case with default header values.

  Forbidden
*/
type PlatformTokenGrantV3Forbidden struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/platforms/{platformId}/token][%d] platformTokenGrantV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PlatformTokenGrantV3Forbidden) ToJSONString() string {
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

func (o *PlatformTokenGrantV3Forbidden) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPlatformTokenGrantV3ServiceUnavailable creates a PlatformTokenGrantV3ServiceUnavailable with default headers values
func NewPlatformTokenGrantV3ServiceUnavailable() *PlatformTokenGrantV3ServiceUnavailable {
	return &PlatformTokenGrantV3ServiceUnavailable{}
}

/*PlatformTokenGrantV3ServiceUnavailable handles this case with default header values.

  Third Party Server timeout or unavailable
*/
type PlatformTokenGrantV3ServiceUnavailable struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV3ServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/platforms/{platformId}/token][%d] platformTokenGrantV3ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *PlatformTokenGrantV3ServiceUnavailable) ToJSONString() string {
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

func (o *PlatformTokenGrantV3ServiceUnavailable) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV3ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
