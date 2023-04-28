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

// SetRoleAsAdminReader is a Reader for the SetRoleAsAdmin structure.
type SetRoleAsAdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetRoleAsAdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewSetRoleAsAdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSetRoleAsAdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSetRoleAsAdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSetRoleAsAdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSetRoleAsAdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/roles/{roleId}/admin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetRoleAsAdminNoContent creates a SetRoleAsAdminNoContent with default headers values
func NewSetRoleAsAdminNoContent() *SetRoleAsAdminNoContent {
	return &SetRoleAsAdminNoContent{}
}

/*SetRoleAsAdminNoContent handles this case with default header values.

  Operation succeeded
*/
type SetRoleAsAdminNoContent struct {
}

func (o *SetRoleAsAdminNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/admin][%d] setRoleAsAdminNoContent ", 204)
}

func (o *SetRoleAsAdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSetRoleAsAdminBadRequest creates a SetRoleAsAdminBadRequest with default headers values
func NewSetRoleAsAdminBadRequest() *SetRoleAsAdminBadRequest {
	return &SetRoleAsAdminBadRequest{}
}

/*SetRoleAsAdminBadRequest handles this case with default header values.

  Invalid request
*/
type SetRoleAsAdminBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SetRoleAsAdminBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/admin][%d] setRoleAsAdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SetRoleAsAdminBadRequest) ToJSONString() string {
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

func (o *SetRoleAsAdminBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SetRoleAsAdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetRoleAsAdminUnauthorized creates a SetRoleAsAdminUnauthorized with default headers values
func NewSetRoleAsAdminUnauthorized() *SetRoleAsAdminUnauthorized {
	return &SetRoleAsAdminUnauthorized{}
}

/*SetRoleAsAdminUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SetRoleAsAdminUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SetRoleAsAdminUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/admin][%d] setRoleAsAdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SetRoleAsAdminUnauthorized) ToJSONString() string {
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

func (o *SetRoleAsAdminUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SetRoleAsAdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetRoleAsAdminForbidden creates a SetRoleAsAdminForbidden with default headers values
func NewSetRoleAsAdminForbidden() *SetRoleAsAdminForbidden {
	return &SetRoleAsAdminForbidden{}
}

/*SetRoleAsAdminForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type SetRoleAsAdminForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SetRoleAsAdminForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/admin][%d] setRoleAsAdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *SetRoleAsAdminForbidden) ToJSONString() string {
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

func (o *SetRoleAsAdminForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SetRoleAsAdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSetRoleAsAdminNotFound creates a SetRoleAsAdminNotFound with default headers values
func NewSetRoleAsAdminNotFound() *SetRoleAsAdminNotFound {
	return &SetRoleAsAdminNotFound{}
}

/*SetRoleAsAdminNotFound handles this case with default header values.

  Data not found
*/
type SetRoleAsAdminNotFound struct {
}

func (o *SetRoleAsAdminNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/admin][%d] setRoleAsAdminNotFound ", 404)
}

func (o *SetRoleAsAdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
