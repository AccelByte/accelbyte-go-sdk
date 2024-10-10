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

// DeleteThirdPartyLoginPlatformDomainV3Reader is a Reader for the DeleteThirdPartyLoginPlatformDomainV3 structure.
type DeleteThirdPartyLoginPlatformDomainV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteThirdPartyLoginPlatformDomainV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteThirdPartyLoginPlatformDomainV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteThirdPartyLoginPlatformDomainV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteThirdPartyLoginPlatformDomainV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteThirdPartyLoginPlatformDomainV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteThirdPartyLoginPlatformDomainV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteThirdPartyLoginPlatformDomainV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteThirdPartyLoginPlatformDomainV3NoContent creates a DeleteThirdPartyLoginPlatformDomainV3NoContent with default headers values
func NewDeleteThirdPartyLoginPlatformDomainV3NoContent() *DeleteThirdPartyLoginPlatformDomainV3NoContent {
	return &DeleteThirdPartyLoginPlatformDomainV3NoContent{}
}

/*DeleteThirdPartyLoginPlatformDomainV3NoContent handles this case with default header values.

  Domain unregister succeeded
*/
type DeleteThirdPartyLoginPlatformDomainV3NoContent struct {
}

func (o *DeleteThirdPartyLoginPlatformDomainV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] deleteThirdPartyLoginPlatformDomainV3NoContent ", 204)
}

func (o *DeleteThirdPartyLoginPlatformDomainV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteThirdPartyLoginPlatformDomainV3BadRequest creates a DeleteThirdPartyLoginPlatformDomainV3BadRequest with default headers values
func NewDeleteThirdPartyLoginPlatformDomainV3BadRequest() *DeleteThirdPartyLoginPlatformDomainV3BadRequest {
	return &DeleteThirdPartyLoginPlatformDomainV3BadRequest{}
}

/*DeleteThirdPartyLoginPlatformDomainV3BadRequest handles this case with default header values.

  Bad Request
*/
type DeleteThirdPartyLoginPlatformDomainV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteThirdPartyLoginPlatformDomainV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] deleteThirdPartyLoginPlatformDomainV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteThirdPartyLoginPlatformDomainV3BadRequest) ToJSONString() string {
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

func (o *DeleteThirdPartyLoginPlatformDomainV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteThirdPartyLoginPlatformDomainV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteThirdPartyLoginPlatformDomainV3Unauthorized creates a DeleteThirdPartyLoginPlatformDomainV3Unauthorized with default headers values
func NewDeleteThirdPartyLoginPlatformDomainV3Unauthorized() *DeleteThirdPartyLoginPlatformDomainV3Unauthorized {
	return &DeleteThirdPartyLoginPlatformDomainV3Unauthorized{}
}

/*DeleteThirdPartyLoginPlatformDomainV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteThirdPartyLoginPlatformDomainV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteThirdPartyLoginPlatformDomainV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] deleteThirdPartyLoginPlatformDomainV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteThirdPartyLoginPlatformDomainV3Unauthorized) ToJSONString() string {
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

func (o *DeleteThirdPartyLoginPlatformDomainV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteThirdPartyLoginPlatformDomainV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteThirdPartyLoginPlatformDomainV3Forbidden creates a DeleteThirdPartyLoginPlatformDomainV3Forbidden with default headers values
func NewDeleteThirdPartyLoginPlatformDomainV3Forbidden() *DeleteThirdPartyLoginPlatformDomainV3Forbidden {
	return &DeleteThirdPartyLoginPlatformDomainV3Forbidden{}
}

/*DeleteThirdPartyLoginPlatformDomainV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteThirdPartyLoginPlatformDomainV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteThirdPartyLoginPlatformDomainV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] deleteThirdPartyLoginPlatformDomainV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteThirdPartyLoginPlatformDomainV3Forbidden) ToJSONString() string {
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

func (o *DeleteThirdPartyLoginPlatformDomainV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteThirdPartyLoginPlatformDomainV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteThirdPartyLoginPlatformDomainV3NotFound creates a DeleteThirdPartyLoginPlatformDomainV3NotFound with default headers values
func NewDeleteThirdPartyLoginPlatformDomainV3NotFound() *DeleteThirdPartyLoginPlatformDomainV3NotFound {
	return &DeleteThirdPartyLoginPlatformDomainV3NotFound{}
}

/*DeleteThirdPartyLoginPlatformDomainV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type DeleteThirdPartyLoginPlatformDomainV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteThirdPartyLoginPlatformDomainV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] deleteThirdPartyLoginPlatformDomainV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteThirdPartyLoginPlatformDomainV3NotFound) ToJSONString() string {
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

func (o *DeleteThirdPartyLoginPlatformDomainV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteThirdPartyLoginPlatformDomainV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteThirdPartyLoginPlatformDomainV3InternalServerError creates a DeleteThirdPartyLoginPlatformDomainV3InternalServerError with default headers values
func NewDeleteThirdPartyLoginPlatformDomainV3InternalServerError() *DeleteThirdPartyLoginPlatformDomainV3InternalServerError {
	return &DeleteThirdPartyLoginPlatformDomainV3InternalServerError{}
}

/*DeleteThirdPartyLoginPlatformDomainV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteThirdPartyLoginPlatformDomainV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteThirdPartyLoginPlatformDomainV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain][%d] deleteThirdPartyLoginPlatformDomainV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteThirdPartyLoginPlatformDomainV3InternalServerError) ToJSONString() string {
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

func (o *DeleteThirdPartyLoginPlatformDomainV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteThirdPartyLoginPlatformDomainV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
