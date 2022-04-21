// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package clients

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// UpdateClientSecretReader is a Reader for the UpdateClientSecret structure.
type UpdateClientSecretReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateClientSecretReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateClientSecretNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateClientSecretBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateClientSecretUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateClientSecretForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateClientSecretNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/clients/{clientId}/secret returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateClientSecretNoContent creates a UpdateClientSecretNoContent with default headers values
func NewUpdateClientSecretNoContent() *UpdateClientSecretNoContent {
	return &UpdateClientSecretNoContent{}
}

/*UpdateClientSecretNoContent handles this case with default header values.

  Operation succeeded
*/
type UpdateClientSecretNoContent struct {
}

func (o *UpdateClientSecretNoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretNoContent ", 204)
}

func (o *UpdateClientSecretNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewUpdateClientSecretBadRequest creates a UpdateClientSecretBadRequest with default headers values
func NewUpdateClientSecretBadRequest() *UpdateClientSecretBadRequest {
	return &UpdateClientSecretBadRequest{}
}

/*UpdateClientSecretBadRequest handles this case with default header values.

  Invalid request
*/
type UpdateClientSecretBadRequest struct {
}

func (o *UpdateClientSecretBadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretBadRequest ", 400)
}

func (o *UpdateClientSecretBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewUpdateClientSecretUnauthorized creates a UpdateClientSecretUnauthorized with default headers values
func NewUpdateClientSecretUnauthorized() *UpdateClientSecretUnauthorized {
	return &UpdateClientSecretUnauthorized{}
}

/*UpdateClientSecretUnauthorized handles this case with default header values.

  Unauthorized access
*/
type UpdateClientSecretUnauthorized struct {
}

func (o *UpdateClientSecretUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretUnauthorized ", 401)
}

func (o *UpdateClientSecretUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewUpdateClientSecretForbidden creates a UpdateClientSecretForbidden with default headers values
func NewUpdateClientSecretForbidden() *UpdateClientSecretForbidden {
	return &UpdateClientSecretForbidden{}
}

/*UpdateClientSecretForbidden handles this case with default header values.

  Forbidden
*/
type UpdateClientSecretForbidden struct {
}

func (o *UpdateClientSecretForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretForbidden ", 403)
}

func (o *UpdateClientSecretForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewUpdateClientSecretNotFound creates a UpdateClientSecretNotFound with default headers values
func NewUpdateClientSecretNotFound() *UpdateClientSecretNotFound {
	return &UpdateClientSecretNotFound{}
}

/*UpdateClientSecretNotFound handles this case with default header values.

  Data not found
*/
type UpdateClientSecretNotFound struct {
}

func (o *UpdateClientSecretNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/clients/{clientId}/secret][%d] updateClientSecretNotFound ", 404)
}

func (o *UpdateClientSecretNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
