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

// RemoveRoleAdminReader is a Reader for the RemoveRoleAdmin structure.
type RemoveRoleAdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RemoveRoleAdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewRemoveRoleAdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRemoveRoleAdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRemoveRoleAdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRemoveRoleAdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRemoveRoleAdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/roles/{roleId}/admin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRemoveRoleAdminNoContent creates a RemoveRoleAdminNoContent with default headers values
func NewRemoveRoleAdminNoContent() *RemoveRoleAdminNoContent {
	return &RemoveRoleAdminNoContent{}
}

/*RemoveRoleAdminNoContent handles this case with default header values.

  Operation succeeded
*/
type RemoveRoleAdminNoContent struct {
}

func (o *RemoveRoleAdminNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/admin][%d] removeRoleAdminNoContent ", 204)
}

func (o *RemoveRoleAdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRemoveRoleAdminBadRequest creates a RemoveRoleAdminBadRequest with default headers values
func NewRemoveRoleAdminBadRequest() *RemoveRoleAdminBadRequest {
	return &RemoveRoleAdminBadRequest{}
}

/*RemoveRoleAdminBadRequest handles this case with default header values.

  Invalid request
*/
type RemoveRoleAdminBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RemoveRoleAdminBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/admin][%d] removeRoleAdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RemoveRoleAdminBadRequest) ToJSONString() string {
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

func (o *RemoveRoleAdminBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RemoveRoleAdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRemoveRoleAdminUnauthorized creates a RemoveRoleAdminUnauthorized with default headers values
func NewRemoveRoleAdminUnauthorized() *RemoveRoleAdminUnauthorized {
	return &RemoveRoleAdminUnauthorized{}
}

/*RemoveRoleAdminUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RemoveRoleAdminUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RemoveRoleAdminUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/admin][%d] removeRoleAdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RemoveRoleAdminUnauthorized) ToJSONString() string {
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

func (o *RemoveRoleAdminUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RemoveRoleAdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRemoveRoleAdminForbidden creates a RemoveRoleAdminForbidden with default headers values
func NewRemoveRoleAdminForbidden() *RemoveRoleAdminForbidden {
	return &RemoveRoleAdminForbidden{}
}

/*RemoveRoleAdminForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type RemoveRoleAdminForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RemoveRoleAdminForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/admin][%d] removeRoleAdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *RemoveRoleAdminForbidden) ToJSONString() string {
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

func (o *RemoveRoleAdminForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RemoveRoleAdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRemoveRoleAdminNotFound creates a RemoveRoleAdminNotFound with default headers values
func NewRemoveRoleAdminNotFound() *RemoveRoleAdminNotFound {
	return &RemoveRoleAdminNotFound{}
}

/*RemoveRoleAdminNotFound handles this case with default header values.

  Data not found
*/
type RemoveRoleAdminNotFound struct {
}

func (o *RemoveRoleAdminNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/admin][%d] removeRoleAdminNotFound ", 404)
}

func (o *RemoveRoleAdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
