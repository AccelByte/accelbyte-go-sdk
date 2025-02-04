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

// PartialUpdateThirdPartyLoginPlatformDomainV3Reader is a Reader for the PartialUpdateThirdPartyLoginPlatformDomainV3 structure.
type PartialUpdateThirdPartyLoginPlatformDomainV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PartialUpdateThirdPartyLoginPlatformDomainV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPartialUpdateThirdPartyLoginPlatformDomainV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPartialUpdateThirdPartyLoginPlatformDomainV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPartialUpdateThirdPartyLoginPlatformDomainV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPartialUpdateThirdPartyLoginPlatformDomainV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPartialUpdateThirdPartyLoginPlatformDomainV3OK creates a PartialUpdateThirdPartyLoginPlatformDomainV3OK with default headers values
func NewPartialUpdateThirdPartyLoginPlatformDomainV3OK() *PartialUpdateThirdPartyLoginPlatformDomainV3OK {
	return &PartialUpdateThirdPartyLoginPlatformDomainV3OK{}
}

/*PartialUpdateThirdPartyLoginPlatformDomainV3OK handles this case with default header values.

  Domain config partial updated
*/
type PartialUpdateThirdPartyLoginPlatformDomainV3OK struct {
	Payload *iamclientmodels.ModelPlatformDomainResponse
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3OK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] partialUpdateThirdPartyLoginPlatformDomainV3OK  %+v", 200, o.ToJSONString())
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3OK) ToJSONString() string {
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

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3OK) GetPayload() *iamclientmodels.ModelPlatformDomainResponse {
	return o.Payload
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPartialUpdateThirdPartyLoginPlatformDomainV3BadRequest creates a PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest with default headers values
func NewPartialUpdateThirdPartyLoginPlatformDomainV3BadRequest() *PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest {
	return &PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest{}
}

/*PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest handles this case with default header values.

  Bad Request
*/
type PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] partialUpdateThirdPartyLoginPlatformDomainV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest) ToJSONString() string {
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

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized creates a PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized with default headers values
func NewPartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized() *PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized {
	return &PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized{}
}

/*PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] partialUpdateThirdPartyLoginPlatformDomainV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized) ToJSONString() string {
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

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPartialUpdateThirdPartyLoginPlatformDomainV3Forbidden creates a PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden with default headers values
func NewPartialUpdateThirdPartyLoginPlatformDomainV3Forbidden() *PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden {
	return &PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden{}
}

/*PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] partialUpdateThirdPartyLoginPlatformDomainV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden) ToJSONString() string {
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

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPartialUpdateThirdPartyLoginPlatformDomainV3NotFound creates a PartialUpdateThirdPartyLoginPlatformDomainV3NotFound with default headers values
func NewPartialUpdateThirdPartyLoginPlatformDomainV3NotFound() *PartialUpdateThirdPartyLoginPlatformDomainV3NotFound {
	return &PartialUpdateThirdPartyLoginPlatformDomainV3NotFound{}
}

/*PartialUpdateThirdPartyLoginPlatformDomainV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type PartialUpdateThirdPartyLoginPlatformDomainV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3NotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] partialUpdateThirdPartyLoginPlatformDomainV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3NotFound) ToJSONString() string {
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

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError creates a PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError with default headers values
func NewPartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError() *PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError {
	return &PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError{}
}

/*PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] partialUpdateThirdPartyLoginPlatformDomainV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError) ToJSONString() string {
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

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PartialUpdateThirdPartyLoginPlatformDomainV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
