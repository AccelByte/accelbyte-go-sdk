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

// DeleteThirdPartyLoginPlatformCredentialV3Reader is a Reader for the DeleteThirdPartyLoginPlatformCredentialV3 structure.
type DeleteThirdPartyLoginPlatformCredentialV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteThirdPartyLoginPlatformCredentialV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteThirdPartyLoginPlatformCredentialV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteThirdPartyLoginPlatformCredentialV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteThirdPartyLoginPlatformCredentialV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteThirdPartyLoginPlatformCredentialV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteThirdPartyLoginPlatformCredentialV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteThirdPartyLoginPlatformCredentialV3NoContent creates a DeleteThirdPartyLoginPlatformCredentialV3NoContent with default headers values
func NewDeleteThirdPartyLoginPlatformCredentialV3NoContent() *DeleteThirdPartyLoginPlatformCredentialV3NoContent {
	return &DeleteThirdPartyLoginPlatformCredentialV3NoContent{}
}

/*DeleteThirdPartyLoginPlatformCredentialV3NoContent handles this case with default header values.

  Delete Process Successful
*/
type DeleteThirdPartyLoginPlatformCredentialV3NoContent struct {
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] deleteThirdPartyLoginPlatformCredentialV3NoContent ", 204)
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteThirdPartyLoginPlatformCredentialV3Unauthorized creates a DeleteThirdPartyLoginPlatformCredentialV3Unauthorized with default headers values
func NewDeleteThirdPartyLoginPlatformCredentialV3Unauthorized() *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized {
	return &DeleteThirdPartyLoginPlatformCredentialV3Unauthorized{}
}

/*DeleteThirdPartyLoginPlatformCredentialV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteThirdPartyLoginPlatformCredentialV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] deleteThirdPartyLoginPlatformCredentialV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized) ToJSONString() string {
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

func (o *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteThirdPartyLoginPlatformCredentialV3Forbidden creates a DeleteThirdPartyLoginPlatformCredentialV3Forbidden with default headers values
func NewDeleteThirdPartyLoginPlatformCredentialV3Forbidden() *DeleteThirdPartyLoginPlatformCredentialV3Forbidden {
	return &DeleteThirdPartyLoginPlatformCredentialV3Forbidden{}
}

/*DeleteThirdPartyLoginPlatformCredentialV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteThirdPartyLoginPlatformCredentialV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] deleteThirdPartyLoginPlatformCredentialV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3Forbidden) ToJSONString() string {
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

func (o *DeleteThirdPartyLoginPlatformCredentialV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteThirdPartyLoginPlatformCredentialV3NotFound creates a DeleteThirdPartyLoginPlatformCredentialV3NotFound with default headers values
func NewDeleteThirdPartyLoginPlatformCredentialV3NotFound() *DeleteThirdPartyLoginPlatformCredentialV3NotFound {
	return &DeleteThirdPartyLoginPlatformCredentialV3NotFound{}
}

/*DeleteThirdPartyLoginPlatformCredentialV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type DeleteThirdPartyLoginPlatformCredentialV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] deleteThirdPartyLoginPlatformCredentialV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3NotFound) ToJSONString() string {
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

func (o *DeleteThirdPartyLoginPlatformCredentialV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteThirdPartyLoginPlatformCredentialV3InternalServerError creates a DeleteThirdPartyLoginPlatformCredentialV3InternalServerError with default headers values
func NewDeleteThirdPartyLoginPlatformCredentialV3InternalServerError() *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError {
	return &DeleteThirdPartyLoginPlatformCredentialV3InternalServerError{}
}

/*DeleteThirdPartyLoginPlatformCredentialV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteThirdPartyLoginPlatformCredentialV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients][%d] deleteThirdPartyLoginPlatformCredentialV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError) ToJSONString() string {
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

func (o *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
