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

// RemoveRoleMembersReader is a Reader for the RemoveRoleMembers structure.
type RemoveRoleMembersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RemoveRoleMembersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewRemoveRoleMembersNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRemoveRoleMembersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRemoveRoleMembersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRemoveRoleMembersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRemoveRoleMembersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/roles/{roleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRemoveRoleMembersNoContent creates a RemoveRoleMembersNoContent with default headers values
func NewRemoveRoleMembersNoContent() *RemoveRoleMembersNoContent {
	return &RemoveRoleMembersNoContent{}
}

/*RemoveRoleMembersNoContent handles this case with default header values.

  Operation succeeded
*/
type RemoveRoleMembersNoContent struct {
}

func (o *RemoveRoleMembersNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/members][%d] removeRoleMembersNoContent ", 204)
}

func (o *RemoveRoleMembersNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRemoveRoleMembersBadRequest creates a RemoveRoleMembersBadRequest with default headers values
func NewRemoveRoleMembersBadRequest() *RemoveRoleMembersBadRequest {
	return &RemoveRoleMembersBadRequest{}
}

/*RemoveRoleMembersBadRequest handles this case with default header values.

  Invalid request
*/
type RemoveRoleMembersBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RemoveRoleMembersBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/members][%d] removeRoleMembersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RemoveRoleMembersBadRequest) ToJSONString() string {
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

func (o *RemoveRoleMembersBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RemoveRoleMembersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRemoveRoleMembersUnauthorized creates a RemoveRoleMembersUnauthorized with default headers values
func NewRemoveRoleMembersUnauthorized() *RemoveRoleMembersUnauthorized {
	return &RemoveRoleMembersUnauthorized{}
}

/*RemoveRoleMembersUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type RemoveRoleMembersUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RemoveRoleMembersUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/members][%d] removeRoleMembersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RemoveRoleMembersUnauthorized) ToJSONString() string {
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

func (o *RemoveRoleMembersUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RemoveRoleMembersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRemoveRoleMembersForbidden creates a RemoveRoleMembersForbidden with default headers values
func NewRemoveRoleMembersForbidden() *RemoveRoleMembersForbidden {
	return &RemoveRoleMembersForbidden{}
}

/*RemoveRoleMembersForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type RemoveRoleMembersForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *RemoveRoleMembersForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/members][%d] removeRoleMembersForbidden  %+v", 403, o.ToJSONString())
}

func (o *RemoveRoleMembersForbidden) ToJSONString() string {
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

func (o *RemoveRoleMembersForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *RemoveRoleMembersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRemoveRoleMembersNotFound creates a RemoveRoleMembersNotFound with default headers values
func NewRemoveRoleMembersNotFound() *RemoveRoleMembersNotFound {
	return &RemoveRoleMembersNotFound{}
}

/*RemoveRoleMembersNotFound handles this case with default header values.

  Data not found
*/
type RemoveRoleMembersNotFound struct {
}

func (o *RemoveRoleMembersNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/roles/{roleId}/members][%d] removeRoleMembersNotFound ", 404)
}

func (o *RemoveRoleMembersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
