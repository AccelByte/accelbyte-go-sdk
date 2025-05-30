// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso_credential

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

// DeleteSSOLoginPlatformCredentialV3Reader is a Reader for the DeleteSSOLoginPlatformCredentialV3 structure.
type DeleteSSOLoginPlatformCredentialV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSSOLoginPlatformCredentialV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSSOLoginPlatformCredentialV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteSSOLoginPlatformCredentialV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteSSOLoginPlatformCredentialV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteSSOLoginPlatformCredentialV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSSOLoginPlatformCredentialV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSSOLoginPlatformCredentialV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSSOLoginPlatformCredentialV3NoContent creates a DeleteSSOLoginPlatformCredentialV3NoContent with default headers values
func NewDeleteSSOLoginPlatformCredentialV3NoContent() *DeleteSSOLoginPlatformCredentialV3NoContent {
	return &DeleteSSOLoginPlatformCredentialV3NoContent{}
}

/*DeleteSSOLoginPlatformCredentialV3NoContent handles this case with default header values.

  Delete Process Successful
*/
type DeleteSSOLoginPlatformCredentialV3NoContent struct {
}

func (o *DeleteSSOLoginPlatformCredentialV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] deleteSsoLoginPlatformCredentialV3NoContent ", 204)
}

func (o *DeleteSSOLoginPlatformCredentialV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteSSOLoginPlatformCredentialV3BadRequest creates a DeleteSSOLoginPlatformCredentialV3BadRequest with default headers values
func NewDeleteSSOLoginPlatformCredentialV3BadRequest() *DeleteSSOLoginPlatformCredentialV3BadRequest {
	return &DeleteSSOLoginPlatformCredentialV3BadRequest{}
}

/*DeleteSSOLoginPlatformCredentialV3BadRequest handles this case with default header values.

  Invalid request
*/
type DeleteSSOLoginPlatformCredentialV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteSSOLoginPlatformCredentialV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] deleteSsoLoginPlatformCredentialV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteSSOLoginPlatformCredentialV3BadRequest) ToJSONString() string {
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

func (o *DeleteSSOLoginPlatformCredentialV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteSSOLoginPlatformCredentialV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSSOLoginPlatformCredentialV3Unauthorized creates a DeleteSSOLoginPlatformCredentialV3Unauthorized with default headers values
func NewDeleteSSOLoginPlatformCredentialV3Unauthorized() *DeleteSSOLoginPlatformCredentialV3Unauthorized {
	return &DeleteSSOLoginPlatformCredentialV3Unauthorized{}
}

/*DeleteSSOLoginPlatformCredentialV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteSSOLoginPlatformCredentialV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteSSOLoginPlatformCredentialV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] deleteSsoLoginPlatformCredentialV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteSSOLoginPlatformCredentialV3Unauthorized) ToJSONString() string {
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

func (o *DeleteSSOLoginPlatformCredentialV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteSSOLoginPlatformCredentialV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSSOLoginPlatformCredentialV3Forbidden creates a DeleteSSOLoginPlatformCredentialV3Forbidden with default headers values
func NewDeleteSSOLoginPlatformCredentialV3Forbidden() *DeleteSSOLoginPlatformCredentialV3Forbidden {
	return &DeleteSSOLoginPlatformCredentialV3Forbidden{}
}

/*DeleteSSOLoginPlatformCredentialV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteSSOLoginPlatformCredentialV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteSSOLoginPlatformCredentialV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] deleteSsoLoginPlatformCredentialV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteSSOLoginPlatformCredentialV3Forbidden) ToJSONString() string {
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

func (o *DeleteSSOLoginPlatformCredentialV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteSSOLoginPlatformCredentialV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSSOLoginPlatformCredentialV3NotFound creates a DeleteSSOLoginPlatformCredentialV3NotFound with default headers values
func NewDeleteSSOLoginPlatformCredentialV3NotFound() *DeleteSSOLoginPlatformCredentialV3NotFound {
	return &DeleteSSOLoginPlatformCredentialV3NotFound{}
}

/*DeleteSSOLoginPlatformCredentialV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10175</td><td>third party credential not found</td></tr></table>
*/
type DeleteSSOLoginPlatformCredentialV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteSSOLoginPlatformCredentialV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] deleteSsoLoginPlatformCredentialV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSSOLoginPlatformCredentialV3NotFound) ToJSONString() string {
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

func (o *DeleteSSOLoginPlatformCredentialV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteSSOLoginPlatformCredentialV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSSOLoginPlatformCredentialV3InternalServerError creates a DeleteSSOLoginPlatformCredentialV3InternalServerError with default headers values
func NewDeleteSSOLoginPlatformCredentialV3InternalServerError() *DeleteSSOLoginPlatformCredentialV3InternalServerError {
	return &DeleteSSOLoginPlatformCredentialV3InternalServerError{}
}

/*DeleteSSOLoginPlatformCredentialV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteSSOLoginPlatformCredentialV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteSSOLoginPlatformCredentialV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso][%d] deleteSsoLoginPlatformCredentialV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSSOLoginPlatformCredentialV3InternalServerError) ToJSONString() string {
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

func (o *DeleteSSOLoginPlatformCredentialV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteSSOLoginPlatformCredentialV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
