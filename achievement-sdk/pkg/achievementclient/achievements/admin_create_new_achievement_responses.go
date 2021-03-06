// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package achievements

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
)

// AdminCreateNewAchievementReader is a Reader for the AdminCreateNewAchievement structure.
type AdminCreateNewAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateNewAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateNewAchievementCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateNewAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateNewAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateNewAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /achievement/v1/admin/namespaces/{namespace}/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateNewAchievementCreated creates a AdminCreateNewAchievementCreated with default headers values
func NewAdminCreateNewAchievementCreated() *AdminCreateNewAchievementCreated {
	return &AdminCreateNewAchievementCreated{}
}

/*AdminCreateNewAchievementCreated handles this case with default header values.

  Created
*/
type AdminCreateNewAchievementCreated struct {
	Payload *achievementclientmodels.ModelsAchievementResponse
}

func (o *AdminCreateNewAchievementCreated) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/achievements][%d] adminCreateNewAchievementCreated  %+v", 201, o.Payload)
}

func (o *AdminCreateNewAchievementCreated) GetPayload() *achievementclientmodels.ModelsAchievementResponse {
	return o.Payload
}

func (o *AdminCreateNewAchievementCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(achievementclientmodels.ModelsAchievementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateNewAchievementBadRequest creates a AdminCreateNewAchievementBadRequest with default headers values
func NewAdminCreateNewAchievementBadRequest() *AdminCreateNewAchievementBadRequest {
	return &AdminCreateNewAchievementBadRequest{}
}

/*AdminCreateNewAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type AdminCreateNewAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminCreateNewAchievementBadRequest) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/achievements][%d] adminCreateNewAchievementBadRequest  %+v", 400, o.Payload)
}

func (o *AdminCreateNewAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateNewAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateNewAchievementUnauthorized creates a AdminCreateNewAchievementUnauthorized with default headers values
func NewAdminCreateNewAchievementUnauthorized() *AdminCreateNewAchievementUnauthorized {
	return &AdminCreateNewAchievementUnauthorized{}
}

/*AdminCreateNewAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminCreateNewAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminCreateNewAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/achievements][%d] adminCreateNewAchievementUnauthorized  %+v", 401, o.Payload)
}

func (o *AdminCreateNewAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateNewAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateNewAchievementInternalServerError creates a AdminCreateNewAchievementInternalServerError with default headers values
func NewAdminCreateNewAchievementInternalServerError() *AdminCreateNewAchievementInternalServerError {
	return &AdminCreateNewAchievementInternalServerError{}
}

/*AdminCreateNewAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCreateNewAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminCreateNewAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/achievements][%d] adminCreateNewAchievementInternalServerError  %+v", 500, o.Payload)
}

func (o *AdminCreateNewAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateNewAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
