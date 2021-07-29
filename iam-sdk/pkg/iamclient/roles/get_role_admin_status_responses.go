// Code generated by go-swagger; DO NOT EDIT.

package roles

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// GetRoleAdminStatusReader is a Reader for the GetRoleAdminStatus structure.
type GetRoleAdminStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRoleAdminStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRoleAdminStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetRoleAdminStatusBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetRoleAdminStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetRoleAdminStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetRoleAdminStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/roles/{roleId}/admin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRoleAdminStatusOK creates a GetRoleAdminStatusOK with default headers values
func NewGetRoleAdminStatusOK() *GetRoleAdminStatusOK {
	return &GetRoleAdminStatusOK{}
}

/*GetRoleAdminStatusOK handles this case with default header values.

  OK
*/
type GetRoleAdminStatusOK struct {
	Payload *iamclientmodels.ModelRoleAdminStatusResponse
}

func (o *GetRoleAdminStatusOK) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusOK  %+v", 200, o.Payload)
}

func (o *GetRoleAdminStatusOK) GetPayload() *iamclientmodels.ModelRoleAdminStatusResponse {
	return o.Payload
}

func (o *GetRoleAdminStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.ModelRoleAdminStatusResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRoleAdminStatusBadRequest creates a GetRoleAdminStatusBadRequest with default headers values
func NewGetRoleAdminStatusBadRequest() *GetRoleAdminStatusBadRequest {
	return &GetRoleAdminStatusBadRequest{}
}

/*GetRoleAdminStatusBadRequest handles this case with default header values.

  Invalid request
*/
type GetRoleAdminStatusBadRequest struct {
}

func (o *GetRoleAdminStatusBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusBadRequest ", 400)
}

func (o *GetRoleAdminStatusBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewGetRoleAdminStatusUnauthorized creates a GetRoleAdminStatusUnauthorized with default headers values
func NewGetRoleAdminStatusUnauthorized() *GetRoleAdminStatusUnauthorized {
	return &GetRoleAdminStatusUnauthorized{}
}

/*GetRoleAdminStatusUnauthorized handles this case with default header values.

  Unauthorized access
*/
type GetRoleAdminStatusUnauthorized struct {
}

func (o *GetRoleAdminStatusUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusUnauthorized ", 401)
}

func (o *GetRoleAdminStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewGetRoleAdminStatusForbidden creates a GetRoleAdminStatusForbidden with default headers values
func NewGetRoleAdminStatusForbidden() *GetRoleAdminStatusForbidden {
	return &GetRoleAdminStatusForbidden{}
}

/*GetRoleAdminStatusForbidden handles this case with default header values.

  Forbidden
*/
type GetRoleAdminStatusForbidden struct {
}

func (o *GetRoleAdminStatusForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusForbidden ", 403)
}

func (o *GetRoleAdminStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewGetRoleAdminStatusNotFound creates a GetRoleAdminStatusNotFound with default headers values
func NewGetRoleAdminStatusNotFound() *GetRoleAdminStatusNotFound {
	return &GetRoleAdminStatusNotFound{}
}

/*GetRoleAdminStatusNotFound handles this case with default header values.

  Data not found
*/
type GetRoleAdminStatusNotFound struct {
}

func (o *GetRoleAdminStatusNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/roles/{roleId}/admin][%d] getRoleAdminStatusNotFound ", 404)
}

func (o *GetRoleAdminStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
