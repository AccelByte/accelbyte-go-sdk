// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package login_allowlist

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

// AdminUpdateLoginAllowlistV3Reader is a Reader for the AdminUpdateLoginAllowlistV3 structure.
type AdminUpdateLoginAllowlistV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateLoginAllowlistV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateLoginAllowlistV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateLoginAllowlistV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateLoginAllowlistV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateLoginAllowlistV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateLoginAllowlistV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/loginAllowlist returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateLoginAllowlistV3NoContent creates a AdminUpdateLoginAllowlistV3NoContent with default headers values
func NewAdminUpdateLoginAllowlistV3NoContent() *AdminUpdateLoginAllowlistV3NoContent {
	return &AdminUpdateLoginAllowlistV3NoContent{}
}

/*AdminUpdateLoginAllowlistV3NoContent handles this case with default header values.

  Operation succeeded
*/
type AdminUpdateLoginAllowlistV3NoContent struct {
	Payload *iamclientmodels.ModelLoginAllowlistResponse
}

func (o *AdminUpdateLoginAllowlistV3NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/loginAllowlist][%d] adminUpdateLoginAllowlistV3NoContent  %+v", 204, o.ToJSONString())
}

func (o *AdminUpdateLoginAllowlistV3NoContent) ToJSONString() string {
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

func (o *AdminUpdateLoginAllowlistV3NoContent) GetPayload() *iamclientmodels.ModelLoginAllowlistResponse {
	return o.Payload
}

func (o *AdminUpdateLoginAllowlistV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelLoginAllowlistResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateLoginAllowlistV3BadRequest creates a AdminUpdateLoginAllowlistV3BadRequest with default headers values
func NewAdminUpdateLoginAllowlistV3BadRequest() *AdminUpdateLoginAllowlistV3BadRequest {
	return &AdminUpdateLoginAllowlistV3BadRequest{}
}

/*AdminUpdateLoginAllowlistV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>10240</td><td>namespace is not game namespace</td></tr><tr><td>10470</td><td>role is empty</td></tr></table>
*/
type AdminUpdateLoginAllowlistV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateLoginAllowlistV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/loginAllowlist][%d] adminUpdateLoginAllowlistV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateLoginAllowlistV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateLoginAllowlistV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateLoginAllowlistV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateLoginAllowlistV3Unauthorized creates a AdminUpdateLoginAllowlistV3Unauthorized with default headers values
func NewAdminUpdateLoginAllowlistV3Unauthorized() *AdminUpdateLoginAllowlistV3Unauthorized {
	return &AdminUpdateLoginAllowlistV3Unauthorized{}
}

/*AdminUpdateLoginAllowlistV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateLoginAllowlistV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateLoginAllowlistV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/loginAllowlist][%d] adminUpdateLoginAllowlistV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateLoginAllowlistV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateLoginAllowlistV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateLoginAllowlistV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateLoginAllowlistV3Forbidden creates a AdminUpdateLoginAllowlistV3Forbidden with default headers values
func NewAdminUpdateLoginAllowlistV3Forbidden() *AdminUpdateLoginAllowlistV3Forbidden {
	return &AdminUpdateLoginAllowlistV3Forbidden{}
}

/*AdminUpdateLoginAllowlistV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateLoginAllowlistV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateLoginAllowlistV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/loginAllowlist][%d] adminUpdateLoginAllowlistV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateLoginAllowlistV3Forbidden) ToJSONString() string {
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

func (o *AdminUpdateLoginAllowlistV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateLoginAllowlistV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdateLoginAllowlistV3InternalServerError creates a AdminUpdateLoginAllowlistV3InternalServerError with default headers values
func NewAdminUpdateLoginAllowlistV3InternalServerError() *AdminUpdateLoginAllowlistV3InternalServerError {
	return &AdminUpdateLoginAllowlistV3InternalServerError{}
}

/*AdminUpdateLoginAllowlistV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateLoginAllowlistV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateLoginAllowlistV3InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/loginAllowlist][%d] adminUpdateLoginAllowlistV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateLoginAllowlistV3InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateLoginAllowlistV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateLoginAllowlistV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
