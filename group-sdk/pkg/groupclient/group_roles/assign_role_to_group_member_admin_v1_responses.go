// Code generated by go-swagger; DO NOT EDIT.

package group_roles

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// AssignRoleToGroupMemberAdminV1Reader is a Reader for the AssignRoleToGroupMemberAdminV1 structure.
type AssignRoleToGroupMemberAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AssignRoleToGroupMemberAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAssignRoleToGroupMemberAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAssignRoleToGroupMemberAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAssignRoleToGroupMemberAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAssignRoleToGroupMemberAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAssignRoleToGroupMemberAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAssignRoleToGroupMemberAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAssignRoleToGroupMemberAdminV1OK creates a AssignRoleToGroupMemberAdminV1OK with default headers values
func NewAssignRoleToGroupMemberAdminV1OK() *AssignRoleToGroupMemberAdminV1OK {
	return &AssignRoleToGroupMemberAdminV1OK{}
}

/*AssignRoleToGroupMemberAdminV1OK handles this case with default header values.

  OK
*/
type AssignRoleToGroupMemberAdminV1OK struct {
	Payload *groupclientmodels.ModelsUpdateMemberRoleResponseV1
}

func (o *AssignRoleToGroupMemberAdminV1OK) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] assignRoleToGroupMemberAdminV1OK  %+v", 200, o.Payload)
}

func (o *AssignRoleToGroupMemberAdminV1OK) GetPayload() *groupclientmodels.ModelsUpdateMemberRoleResponseV1 {
	return o.Payload
}

func (o *AssignRoleToGroupMemberAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(groupclientmodels.ModelsUpdateMemberRoleResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAssignRoleToGroupMemberAdminV1BadRequest creates a AssignRoleToGroupMemberAdminV1BadRequest with default headers values
func NewAssignRoleToGroupMemberAdminV1BadRequest() *AssignRoleToGroupMemberAdminV1BadRequest {
	return &AssignRoleToGroupMemberAdminV1BadRequest{}
}

/*AssignRoleToGroupMemberAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AssignRoleToGroupMemberAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AssignRoleToGroupMemberAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] assignRoleToGroupMemberAdminV1BadRequest  %+v", 400, o.Payload)
}

func (o *AssignRoleToGroupMemberAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AssignRoleToGroupMemberAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAssignRoleToGroupMemberAdminV1Unauthorized creates a AssignRoleToGroupMemberAdminV1Unauthorized with default headers values
func NewAssignRoleToGroupMemberAdminV1Unauthorized() *AssignRoleToGroupMemberAdminV1Unauthorized {
	return &AssignRoleToGroupMemberAdminV1Unauthorized{}
}

/*AssignRoleToGroupMemberAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AssignRoleToGroupMemberAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AssignRoleToGroupMemberAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] assignRoleToGroupMemberAdminV1Unauthorized  %+v", 401, o.Payload)
}

func (o *AssignRoleToGroupMemberAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AssignRoleToGroupMemberAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAssignRoleToGroupMemberAdminV1Forbidden creates a AssignRoleToGroupMemberAdminV1Forbidden with default headers values
func NewAssignRoleToGroupMemberAdminV1Forbidden() *AssignRoleToGroupMemberAdminV1Forbidden {
	return &AssignRoleToGroupMemberAdminV1Forbidden{}
}

/*AssignRoleToGroupMemberAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20022</td><td>token is not user token</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AssignRoleToGroupMemberAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AssignRoleToGroupMemberAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] assignRoleToGroupMemberAdminV1Forbidden  %+v", 403, o.Payload)
}

func (o *AssignRoleToGroupMemberAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AssignRoleToGroupMemberAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAssignRoleToGroupMemberAdminV1NotFound creates a AssignRoleToGroupMemberAdminV1NotFound with default headers values
func NewAssignRoleToGroupMemberAdminV1NotFound() *AssignRoleToGroupMemberAdminV1NotFound {
	return &AssignRoleToGroupMemberAdminV1NotFound{}
}

/*AssignRoleToGroupMemberAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>73232</td><td>member role not found</td></tr></table>
*/
type AssignRoleToGroupMemberAdminV1NotFound struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AssignRoleToGroupMemberAdminV1NotFound) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] assignRoleToGroupMemberAdminV1NotFound  %+v", 404, o.Payload)
}

func (o *AssignRoleToGroupMemberAdminV1NotFound) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AssignRoleToGroupMemberAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAssignRoleToGroupMemberAdminV1InternalServerError creates a AssignRoleToGroupMemberAdminV1InternalServerError with default headers values
func NewAssignRoleToGroupMemberAdminV1InternalServerError() *AssignRoleToGroupMemberAdminV1InternalServerError {
	return &AssignRoleToGroupMemberAdminV1InternalServerError{}
}

/*AssignRoleToGroupMemberAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AssignRoleToGroupMemberAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *AssignRoleToGroupMemberAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members][%d] assignRoleToGroupMemberAdminV1InternalServerError  %+v", 500, o.Payload)
}

func (o *AssignRoleToGroupMemberAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AssignRoleToGroupMemberAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
