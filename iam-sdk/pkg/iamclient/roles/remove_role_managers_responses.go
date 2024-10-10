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

// RemoveRoleManagersReader is a Reader for the RemoveRoleManagers structure.
type RemoveRoleManagersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RemoveRoleManagersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewRemoveRoleManagersNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRemoveRoleManagersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRemoveRoleManagersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRemoveRoleManagersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRemoveRoleManagersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/roles/{roleId}/managers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRemoveRoleManagersNoContent creates a RemoveRoleManagersNoContent with default headers values
func NewRemoveRoleManagersNoContent() *RemoveRoleManagersNoContent {
	return &RemoveRoleManagersNoContent{}
}

/*RemoveRoleManagersNoContent handles this case with default header values.

  Operation succeeded
*/
type RemoveRoleManagersNoContent struct {
}

func (o *RemoveRoleManagersNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/managers][%d] removeRoleManagersNoContent ", 204)
}

func (o *RemoveRoleManagersNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRemoveRoleManagersBadRequest creates a RemoveRoleManagersBadRequest with default headers values
func NewRemoveRoleManagersBadRequest() *RemoveRoleManagersBadRequest {
	return &RemoveRoleManagersBadRequest{}
}

/*RemoveRoleManagersBadRequest handles this case with default header values.

  Invalid request
*/
type RemoveRoleManagersBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RemoveRoleManagersBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/managers][%d] removeRoleManagersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RemoveRoleManagersBadRequest) ToJSONString() string {
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

func (o *RemoveRoleManagersBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RemoveRoleManagersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRemoveRoleManagersUnauthorized creates a RemoveRoleManagersUnauthorized with default headers values
func NewRemoveRoleManagersUnauthorized() *RemoveRoleManagersUnauthorized {
	return &RemoveRoleManagersUnauthorized{}
}

/*RemoveRoleManagersUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RemoveRoleManagersUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RemoveRoleManagersUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/managers][%d] removeRoleManagersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RemoveRoleManagersUnauthorized) ToJSONString() string {
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

func (o *RemoveRoleManagersUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RemoveRoleManagersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRemoveRoleManagersForbidden creates a RemoveRoleManagersForbidden with default headers values
func NewRemoveRoleManagersForbidden() *RemoveRoleManagersForbidden {
	return &RemoveRoleManagersForbidden{}
}

/*RemoveRoleManagersForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type RemoveRoleManagersForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RemoveRoleManagersForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/managers][%d] removeRoleManagersForbidden  %+v", 403, o.ToJSONString())
}

func (o *RemoveRoleManagersForbidden) ToJSONString() string {
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

func (o *RemoveRoleManagersForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RemoveRoleManagersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRemoveRoleManagersNotFound creates a RemoveRoleManagersNotFound with default headers values
func NewRemoveRoleManagersNotFound() *RemoveRoleManagersNotFound {
	return &RemoveRoleManagersNotFound{}
}

/*RemoveRoleManagersNotFound handles this case with default header values.

  Data not found
*/
type RemoveRoleManagersNotFound struct {
}

func (o *RemoveRoleManagersNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/managers][%d] removeRoleManagersNotFound ", 404)
}

func (o *RemoveRoleManagersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
