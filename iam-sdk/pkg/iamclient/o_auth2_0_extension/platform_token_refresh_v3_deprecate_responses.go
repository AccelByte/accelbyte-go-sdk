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

// PlatformTokenRefreshV3DeprecateReader is a Reader for the PlatformTokenRefreshV3Deprecate structure.
type PlatformTokenRefreshV3DeprecateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformTokenRefreshV3DeprecateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPlatformTokenRefreshV3DeprecateOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPlatformTokenRefreshV3DeprecateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPlatformTokenRefreshV3DeprecateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPlatformTokenRefreshV3DeprecateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewPlatformTokenRefreshV3DeprecateServiceUnavailable()
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

// NewPlatformTokenRefreshV3DeprecateOK creates a PlatformTokenRefreshV3DeprecateOK with default headers values
func NewPlatformTokenRefreshV3DeprecateOK() *PlatformTokenRefreshV3DeprecateOK {
	return &PlatformTokenRefreshV3DeprecateOK{}
}

/*PlatformTokenRefreshV3DeprecateOK handles this case with default header values.

  Token returned
*/
type PlatformTokenRefreshV3DeprecateOK struct {
	Payload *iamclientmodels.OauthmodelPlatformTokenRefreshResponseV3
}

func (o *PlatformTokenRefreshV3DeprecateOK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3DeprecateOK  %+v", 200, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3DeprecateOK) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3DeprecateOK) GetPayload() *iamclientmodels.OauthmodelPlatformTokenRefreshResponseV3 {
	return o.Payload
}

func (o *PlatformTokenRefreshV3DeprecateOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenRefreshV3DeprecateBadRequest creates a PlatformTokenRefreshV3DeprecateBadRequest with default headers values
func NewPlatformTokenRefreshV3DeprecateBadRequest() *PlatformTokenRefreshV3DeprecateBadRequest {
	return &PlatformTokenRefreshV3DeprecateBadRequest{}
}

/*PlatformTokenRefreshV3DeprecateBadRequest handles this case with default header values.

  General request error
*/
type PlatformTokenRefreshV3DeprecateBadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRefreshV3DeprecateBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3DeprecateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3DeprecateBadRequest) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3DeprecateBadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRefreshV3DeprecateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenRefreshV3DeprecateUnauthorized creates a PlatformTokenRefreshV3DeprecateUnauthorized with default headers values
func NewPlatformTokenRefreshV3DeprecateUnauthorized() *PlatformTokenRefreshV3DeprecateUnauthorized {
	return &PlatformTokenRefreshV3DeprecateUnauthorized{}
}

/*PlatformTokenRefreshV3DeprecateUnauthorized handles this case with default header values.

  Client authentication failed
*/
type PlatformTokenRefreshV3DeprecateUnauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRefreshV3DeprecateUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3DeprecateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3DeprecateUnauthorized) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3DeprecateUnauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRefreshV3DeprecateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenRefreshV3DeprecateForbidden creates a PlatformTokenRefreshV3DeprecateForbidden with default headers values
func NewPlatformTokenRefreshV3DeprecateForbidden() *PlatformTokenRefreshV3DeprecateForbidden {
	return &PlatformTokenRefreshV3DeprecateForbidden{}
}

/*PlatformTokenRefreshV3DeprecateForbidden handles this case with default header values.

  Forbidden
*/
type PlatformTokenRefreshV3DeprecateForbidden struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRefreshV3DeprecateForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3DeprecateForbidden  %+v", 403, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3DeprecateForbidden) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3DeprecateForbidden) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRefreshV3DeprecateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenRefreshV3DeprecateServiceUnavailable creates a PlatformTokenRefreshV3DeprecateServiceUnavailable with default headers values
func NewPlatformTokenRefreshV3DeprecateServiceUnavailable() *PlatformTokenRefreshV3DeprecateServiceUnavailable {
	return &PlatformTokenRefreshV3DeprecateServiceUnavailable{}
}

/*PlatformTokenRefreshV3DeprecateServiceUnavailable handles this case with default header values.

  Third Party Server timeout or unavailable
*/
type PlatformTokenRefreshV3DeprecateServiceUnavailable struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenRefreshV3DeprecateServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /iam/v3/v3/platforms/{platformId}/token/verify][%d] platformTokenRefreshV3DeprecateServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *PlatformTokenRefreshV3DeprecateServiceUnavailable) ToJSONString() string {
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

func (o *PlatformTokenRefreshV3DeprecateServiceUnavailable) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenRefreshV3DeprecateServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
