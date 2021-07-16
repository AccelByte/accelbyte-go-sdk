// Code generated by go-swagger; DO NOT EDIT.

package user_profile

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// GetMyProfileInfoReader is a Reader for the GetMyProfileInfo structure.
type GetMyProfileInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMyProfileInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMyProfileInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetMyProfileInfoBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMyProfileInfoUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMyProfileInfoForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetMyProfileInfoNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /v1/public/namespaces/{namespace}/users/me/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMyProfileInfoOK creates a GetMyProfileInfoOK with default headers values
func NewGetMyProfileInfoOK() *GetMyProfileInfoOK {
	return &GetMyProfileInfoOK{}
}

/*GetMyProfileInfoOK handles this case with default header values.

  Successful operation
*/
type GetMyProfileInfoOK struct {
	Payload *basicclientmodels.UserProfilePrivateInfo
}

func (o *GetMyProfileInfoOK) Error() string {
	return fmt.Sprintf("[GET /v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoOK  %+v", 200, o.Payload)
}

func (o *GetMyProfileInfoOK) GetPayload() *basicclientmodels.UserProfilePrivateInfo {
	return o.Payload
}

func (o *GetMyProfileInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.UserProfilePrivateInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyProfileInfoBadRequest creates a GetMyProfileInfoBadRequest with default headers values
func NewGetMyProfileInfoBadRequest() *GetMyProfileInfoBadRequest {
	return &GetMyProfileInfoBadRequest{}
}

/*GetMyProfileInfoBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetMyProfileInfoBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *GetMyProfileInfoBadRequest) Error() string {
	return fmt.Sprintf("[GET /v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoBadRequest  %+v", 400, o.Payload)
}

func (o *GetMyProfileInfoBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GetMyProfileInfoBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyProfileInfoUnauthorized creates a GetMyProfileInfoUnauthorized with default headers values
func NewGetMyProfileInfoUnauthorized() *GetMyProfileInfoUnauthorized {
	return &GetMyProfileInfoUnauthorized{}
}

/*GetMyProfileInfoUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type GetMyProfileInfoUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyProfileInfoUnauthorized) Error() string {
	return fmt.Sprintf("[GET /v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoUnauthorized  %+v", 401, o.Payload)
}

func (o *GetMyProfileInfoUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyProfileInfoUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyProfileInfoForbidden creates a GetMyProfileInfoForbidden with default headers values
func NewGetMyProfileInfoForbidden() *GetMyProfileInfoForbidden {
	return &GetMyProfileInfoForbidden{}
}

/*GetMyProfileInfoForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetMyProfileInfoForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyProfileInfoForbidden) Error() string {
	return fmt.Sprintf("[GET /v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoForbidden  %+v", 403, o.Payload)
}

func (o *GetMyProfileInfoForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyProfileInfoForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetMyProfileInfoNotFound creates a GetMyProfileInfoNotFound with default headers values
func NewGetMyProfileInfoNotFound() *GetMyProfileInfoNotFound {
	return &GetMyProfileInfoNotFound{}
}

/*GetMyProfileInfoNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr><tr><td>20017</td><td>user not linked</td></tr><tr><td>11440</td><td>user profile not found</td></tr></table>
*/
type GetMyProfileInfoNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *GetMyProfileInfoNotFound) Error() string {
	return fmt.Sprintf("[GET /v1/public/namespaces/{namespace}/users/me/profiles][%d] getMyProfileInfoNotFound  %+v", 404, o.Payload)
}

func (o *GetMyProfileInfoNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetMyProfileInfoNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
