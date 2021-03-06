// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// AdminExportConfigV1Reader is a Reader for the AdminExportConfigV1 structure.
type AdminExportConfigV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminExportConfigV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminExportConfigV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminExportConfigV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminExportConfigV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminExportConfigV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/config/namespaces/{namespace}/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminExportConfigV1OK creates a AdminExportConfigV1OK with default headers values
func NewAdminExportConfigV1OK() *AdminExportConfigV1OK {
	return &AdminExportConfigV1OK{}
}

/*AdminExportConfigV1OK handles this case with default header values.

  OK
*/
type AdminExportConfigV1OK struct {
	Payload *lobbyclientmodels.ModelsConfigExport
}

func (o *AdminExportConfigV1OK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}/export][%d] adminExportConfigV1OK  %+v", 200, o.Payload)
}

func (o *AdminExportConfigV1OK) GetPayload() *lobbyclientmodels.ModelsConfigExport {
	return o.Payload
}

func (o *AdminExportConfigV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.ModelsConfigExport)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminExportConfigV1Unauthorized creates a AdminExportConfigV1Unauthorized with default headers values
func NewAdminExportConfigV1Unauthorized() *AdminExportConfigV1Unauthorized {
	return &AdminExportConfigV1Unauthorized{}
}

/*AdminExportConfigV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type AdminExportConfigV1Unauthorized struct {
	Payload *lobbyclientmodels.ResponseError
}

func (o *AdminExportConfigV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}/export][%d] adminExportConfigV1Unauthorized  %+v", 401, o.Payload)
}

func (o *AdminExportConfigV1Unauthorized) GetPayload() *lobbyclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminExportConfigV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminExportConfigV1Forbidden creates a AdminExportConfigV1Forbidden with default headers values
func NewAdminExportConfigV1Forbidden() *AdminExportConfigV1Forbidden {
	return &AdminExportConfigV1Forbidden{}
}

/*AdminExportConfigV1Forbidden handles this case with default header values.

  Forbidden
*/
type AdminExportConfigV1Forbidden struct {
	Payload *lobbyclientmodels.ResponseError
}

func (o *AdminExportConfigV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}/export][%d] adminExportConfigV1Forbidden  %+v", 403, o.Payload)
}

func (o *AdminExportConfigV1Forbidden) GetPayload() *lobbyclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminExportConfigV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminExportConfigV1InternalServerError creates a AdminExportConfigV1InternalServerError with default headers values
func NewAdminExportConfigV1InternalServerError() *AdminExportConfigV1InternalServerError {
	return &AdminExportConfigV1InternalServerError{}
}

/*AdminExportConfigV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminExportConfigV1InternalServerError struct {
	Payload *lobbyclientmodels.ResponseError
}

func (o *AdminExportConfigV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/config/namespaces/{namespace}/export][%d] adminExportConfigV1InternalServerError  %+v", 500, o.Payload)
}

func (o *AdminExportConfigV1InternalServerError) GetPayload() *lobbyclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminExportConfigV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
