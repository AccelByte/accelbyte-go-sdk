// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
)

// DeleteServerReader is a Reader for the DeleteServer structure.
type DeleteServerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteServerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteServerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteServerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /qosm/admin/servers/{region} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteServerNoContent creates a DeleteServerNoContent with default headers values
func NewDeleteServerNoContent() *DeleteServerNoContent {
	return &DeleteServerNoContent{}
}

/*DeleteServerNoContent handles this case with default header values.

  record deleted
*/
type DeleteServerNoContent struct {
}

func (o *DeleteServerNoContent) Error() string {
	return fmt.Sprintf("[DELETE /qosm/admin/servers/{region}][%d] deleteServerNoContent ", 204)
}

func (o *DeleteServerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewDeleteServerInternalServerError creates a DeleteServerInternalServerError with default headers values
func NewDeleteServerInternalServerError() *DeleteServerInternalServerError {
	return &DeleteServerInternalServerError{}
}

/*DeleteServerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteServerInternalServerError struct {
	Payload *qosmclientmodels.ResponseError
}

func (o *DeleteServerInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /qosm/admin/servers/{region}][%d] deleteServerInternalServerError  %+v", 500, o.Payload)
}

func (o *DeleteServerInternalServerError) GetPayload() *qosmclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteServerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(qosmclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
