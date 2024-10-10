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

// AddRoleMembersReader is a Reader for the AddRoleMembers structure.
type AddRoleMembersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AddRoleMembersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAddRoleMembersNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAddRoleMembersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAddRoleMembersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAddRoleMembersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAddRoleMembersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/roles/{roleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAddRoleMembersNoContent creates a AddRoleMembersNoContent with default headers values
func NewAddRoleMembersNoContent() *AddRoleMembersNoContent {
	return &AddRoleMembersNoContent{}
}

/*AddRoleMembersNoContent handles this case with default header values.

  Operation succeeded
*/
type AddRoleMembersNoContent struct {
}

func (o *AddRoleMembersNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersNoContent ", 204)
}

func (o *AddRoleMembersNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAddRoleMembersBadRequest creates a AddRoleMembersBadRequest with default headers values
func NewAddRoleMembersBadRequest() *AddRoleMembersBadRequest {
	return &AddRoleMembersBadRequest{}
}

/*AddRoleMembersBadRequest handles this case with default header values.

  Invalid request
*/
type AddRoleMembersBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddRoleMembersBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AddRoleMembersBadRequest) ToJSONString() string {
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

func (o *AddRoleMembersBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddRoleMembersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddRoleMembersUnauthorized creates a AddRoleMembersUnauthorized with default headers values
func NewAddRoleMembersUnauthorized() *AddRoleMembersUnauthorized {
	return &AddRoleMembersUnauthorized{}
}

/*AddRoleMembersUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AddRoleMembersUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddRoleMembersUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AddRoleMembersUnauthorized) ToJSONString() string {
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

func (o *AddRoleMembersUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddRoleMembersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddRoleMembersForbidden creates a AddRoleMembersForbidden with default headers values
func NewAddRoleMembersForbidden() *AddRoleMembersForbidden {
	return &AddRoleMembersForbidden{}
}

/*AddRoleMembersForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AddRoleMembersForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AddRoleMembersForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersForbidden  %+v", 403, o.ToJSONString())
}

func (o *AddRoleMembersForbidden) ToJSONString() string {
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

func (o *AddRoleMembersForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AddRoleMembersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAddRoleMembersNotFound creates a AddRoleMembersNotFound with default headers values
func NewAddRoleMembersNotFound() *AddRoleMembersNotFound {
	return &AddRoleMembersNotFound{}
}

/*AddRoleMembersNotFound handles this case with default header values.

  Data not found
*/
type AddRoleMembersNotFound struct {
}

func (o *AddRoleMembersNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/roles/{roleId}/members][%d] addRoleMembersNotFound ", 404)
}

func (o *AddRoleMembersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
