// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party_credential

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

// UpdateThirdPartyLoginPlatformDomainV3Reader is a Reader for the UpdateThirdPartyLoginPlatformDomainV3 structure.
type UpdateThirdPartyLoginPlatformDomainV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateThirdPartyLoginPlatformDomainV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateThirdPartyLoginPlatformDomainV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateThirdPartyLoginPlatformDomainV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateThirdPartyLoginPlatformDomainV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateThirdPartyLoginPlatformDomainV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateThirdPartyLoginPlatformDomainV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateThirdPartyLoginPlatformDomainV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateThirdPartyLoginPlatformDomainV3OK creates a UpdateThirdPartyLoginPlatformDomainV3OK with default headers values
func NewUpdateThirdPartyLoginPlatformDomainV3OK() *UpdateThirdPartyLoginPlatformDomainV3OK {
	return &UpdateThirdPartyLoginPlatformDomainV3OK{}
}

/*UpdateThirdPartyLoginPlatformDomainV3OK handles this case with default header values.

  Domain config updated
*/
type UpdateThirdPartyLoginPlatformDomainV3OK struct {
	Payload *iamclientmodels.ModelPlatformDomainResponse
}

func (o *UpdateThirdPartyLoginPlatformDomainV3OK) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] updateThirdPartyLoginPlatformDomainV3OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateThirdPartyLoginPlatformDomainV3OK) ToJSONString() string {
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

func (o *UpdateThirdPartyLoginPlatformDomainV3OK) GetPayload() *iamclientmodels.ModelPlatformDomainResponse {
	return o.Payload
}

func (o *UpdateThirdPartyLoginPlatformDomainV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelPlatformDomainResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateThirdPartyLoginPlatformDomainV3BadRequest creates a UpdateThirdPartyLoginPlatformDomainV3BadRequest with default headers values
func NewUpdateThirdPartyLoginPlatformDomainV3BadRequest() *UpdateThirdPartyLoginPlatformDomainV3BadRequest {
	return &UpdateThirdPartyLoginPlatformDomainV3BadRequest{}
}

/*UpdateThirdPartyLoginPlatformDomainV3BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateThirdPartyLoginPlatformDomainV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateThirdPartyLoginPlatformDomainV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] updateThirdPartyLoginPlatformDomainV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateThirdPartyLoginPlatformDomainV3BadRequest) ToJSONString() string {
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

func (o *UpdateThirdPartyLoginPlatformDomainV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateThirdPartyLoginPlatformDomainV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateThirdPartyLoginPlatformDomainV3Unauthorized creates a UpdateThirdPartyLoginPlatformDomainV3Unauthorized with default headers values
func NewUpdateThirdPartyLoginPlatformDomainV3Unauthorized() *UpdateThirdPartyLoginPlatformDomainV3Unauthorized {
	return &UpdateThirdPartyLoginPlatformDomainV3Unauthorized{}
}

/*UpdateThirdPartyLoginPlatformDomainV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateThirdPartyLoginPlatformDomainV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateThirdPartyLoginPlatformDomainV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] updateThirdPartyLoginPlatformDomainV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateThirdPartyLoginPlatformDomainV3Unauthorized) ToJSONString() string {
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

func (o *UpdateThirdPartyLoginPlatformDomainV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateThirdPartyLoginPlatformDomainV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateThirdPartyLoginPlatformDomainV3Forbidden creates a UpdateThirdPartyLoginPlatformDomainV3Forbidden with default headers values
func NewUpdateThirdPartyLoginPlatformDomainV3Forbidden() *UpdateThirdPartyLoginPlatformDomainV3Forbidden {
	return &UpdateThirdPartyLoginPlatformDomainV3Forbidden{}
}

/*UpdateThirdPartyLoginPlatformDomainV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateThirdPartyLoginPlatformDomainV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateThirdPartyLoginPlatformDomainV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] updateThirdPartyLoginPlatformDomainV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateThirdPartyLoginPlatformDomainV3Forbidden) ToJSONString() string {
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

func (o *UpdateThirdPartyLoginPlatformDomainV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateThirdPartyLoginPlatformDomainV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateThirdPartyLoginPlatformDomainV3NotFound creates a UpdateThirdPartyLoginPlatformDomainV3NotFound with default headers values
func NewUpdateThirdPartyLoginPlatformDomainV3NotFound() *UpdateThirdPartyLoginPlatformDomainV3NotFound {
	return &UpdateThirdPartyLoginPlatformDomainV3NotFound{}
}

/*UpdateThirdPartyLoginPlatformDomainV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type UpdateThirdPartyLoginPlatformDomainV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateThirdPartyLoginPlatformDomainV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] updateThirdPartyLoginPlatformDomainV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateThirdPartyLoginPlatformDomainV3NotFound) ToJSONString() string {
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

func (o *UpdateThirdPartyLoginPlatformDomainV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateThirdPartyLoginPlatformDomainV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateThirdPartyLoginPlatformDomainV3InternalServerError creates a UpdateThirdPartyLoginPlatformDomainV3InternalServerError with default headers values
func NewUpdateThirdPartyLoginPlatformDomainV3InternalServerError() *UpdateThirdPartyLoginPlatformDomainV3InternalServerError {
	return &UpdateThirdPartyLoginPlatformDomainV3InternalServerError{}
}

/*UpdateThirdPartyLoginPlatformDomainV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type UpdateThirdPartyLoginPlatformDomainV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateThirdPartyLoginPlatformDomainV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] updateThirdPartyLoginPlatformDomainV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateThirdPartyLoginPlatformDomainV3InternalServerError) ToJSONString() string {
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

func (o *UpdateThirdPartyLoginPlatformDomainV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateThirdPartyLoginPlatformDomainV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
