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

// GetRoleMembersReader is a Reader for the GetRoleMembers structure.
type GetRoleMembersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRoleMembersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRoleMembersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetRoleMembersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetRoleMembersUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetRoleMembersForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetRoleMembersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/roles/{roleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRoleMembersOK creates a GetRoleMembersOK with default headers values
func NewGetRoleMembersOK() *GetRoleMembersOK {
	return &GetRoleMembersOK{}
}

/*GetRoleMembersOK handles this case with default header values.

  OK
*/
type GetRoleMembersOK struct {
	Payload *iamclientmodels.ModelRoleMembersResponse
}

func (o *GetRoleMembersOK) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/members][%d] getRoleMembersOK  %+v", 200, o.ToJSONString())
}

func (o *GetRoleMembersOK) ToJSONString() string {
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

func (o *GetRoleMembersOK) GetPayload() *iamclientmodels.ModelRoleMembersResponse {
	return o.Payload
}

func (o *GetRoleMembersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleMembersResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRoleMembersBadRequest creates a GetRoleMembersBadRequest with default headers values
func NewGetRoleMembersBadRequest() *GetRoleMembersBadRequest {
	return &GetRoleMembersBadRequest{}
}

/*GetRoleMembersBadRequest handles this case with default header values.

  Invalid request
*/
type GetRoleMembersBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRoleMembersBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/members][%d] getRoleMembersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetRoleMembersBadRequest) ToJSONString() string {
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

func (o *GetRoleMembersBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRoleMembersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetRoleMembersUnauthorized creates a GetRoleMembersUnauthorized with default headers values
func NewGetRoleMembersUnauthorized() *GetRoleMembersUnauthorized {
	return &GetRoleMembersUnauthorized{}
}

/*GetRoleMembersUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetRoleMembersUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRoleMembersUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/members][%d] getRoleMembersUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetRoleMembersUnauthorized) ToJSONString() string {
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

func (o *GetRoleMembersUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRoleMembersUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetRoleMembersForbidden creates a GetRoleMembersForbidden with default headers values
func NewGetRoleMembersForbidden() *GetRoleMembersForbidden {
	return &GetRoleMembersForbidden{}
}

/*GetRoleMembersForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetRoleMembersForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetRoleMembersForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/members][%d] getRoleMembersForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetRoleMembersForbidden) ToJSONString() string {
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

func (o *GetRoleMembersForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetRoleMembersForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetRoleMembersNotFound creates a GetRoleMembersNotFound with default headers values
func NewGetRoleMembersNotFound() *GetRoleMembersNotFound {
	return &GetRoleMembersNotFound{}
}

/*GetRoleMembersNotFound handles this case with default header values.

  Data not found
*/
type GetRoleMembersNotFound struct {
}

func (o *GetRoleMembersNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/members][%d] getRoleMembersNotFound ", 404)
}

func (o *GetRoleMembersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
