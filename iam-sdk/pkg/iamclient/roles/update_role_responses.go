// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// UpdateRoleReader is a Reader for the UpdateRole structure.
type UpdateRoleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateRoleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateRoleOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateRoleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateRoleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateRoleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateRoleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/roles/{roleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateRoleOK creates a UpdateRoleOK with default headers values
func NewUpdateRoleOK() *UpdateRoleOK {
	return &UpdateRoleOK{}
}

/*UpdateRoleOK handles this case with default header values.

  OK
*/
type UpdateRoleOK struct {
	Payload *iamclientmodels.ModelRoleResponse
}

func (o *UpdateRoleOK) Error() string {
	return fmt.Sprintf("[PUT /iam/roles/{roleId}][%d] updateRoleOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateRoleOK) ToJSONString() string {
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

func (o *UpdateRoleOK) GetPayload() *iamclientmodels.ModelRoleResponse {
	return o.Payload
}

func (o *UpdateRoleOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRoleBadRequest creates a UpdateRoleBadRequest with default headers values
func NewUpdateRoleBadRequest() *UpdateRoleBadRequest {
	return &UpdateRoleBadRequest{}
}

/*UpdateRoleBadRequest handles this case with default header values.

  Invalid request
*/
type UpdateRoleBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateRoleBadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/roles/{roleId}][%d] updateRoleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateRoleBadRequest) ToJSONString() string {
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

func (o *UpdateRoleBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateRoleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateRoleUnauthorized creates a UpdateRoleUnauthorized with default headers values
func NewUpdateRoleUnauthorized() *UpdateRoleUnauthorized {
	return &UpdateRoleUnauthorized{}
}

/*UpdateRoleUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type UpdateRoleUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateRoleUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/roles/{roleId}][%d] updateRoleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateRoleUnauthorized) ToJSONString() string {
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

func (o *UpdateRoleUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateRoleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateRoleForbidden creates a UpdateRoleForbidden with default headers values
func NewUpdateRoleForbidden() *UpdateRoleForbidden {
	return &UpdateRoleForbidden{}
}

/*UpdateRoleForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type UpdateRoleForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *UpdateRoleForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/roles/{roleId}][%d] updateRoleForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateRoleForbidden) ToJSONString() string {
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

func (o *UpdateRoleForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *UpdateRoleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateRoleNotFound creates a UpdateRoleNotFound with default headers values
func NewUpdateRoleNotFound() *UpdateRoleNotFound {
	return &UpdateRoleNotFound{}
}

/*UpdateRoleNotFound handles this case with default header values.

  Data not found
*/
type UpdateRoleNotFound struct {
}

func (o *UpdateRoleNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/roles/{roleId}][%d] updateRoleNotFound ", 404)
}

func (o *UpdateRoleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
