// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// GetAdminEmailConfigurationReader is a Reader for the GetAdminEmailConfiguration structure.
type GetAdminEmailConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAdminEmailConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAdminEmailConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAdminEmailConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAdminEmailConfigurationInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/emails/configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAdminEmailConfigurationOK creates a GetAdminEmailConfigurationOK with default headers values
func NewGetAdminEmailConfigurationOK() *GetAdminEmailConfigurationOK {
	return &GetAdminEmailConfigurationOK{}
}

/*GetAdminEmailConfigurationOK handles this case with default header values.

  OK
*/
type GetAdminEmailConfigurationOK struct {
	Payload []string
}

func (o *GetAdminEmailConfigurationOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] getAdminEmailConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *GetAdminEmailConfigurationOK) ToJSONString() string {
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

func (o *GetAdminEmailConfigurationOK) GetPayload() []string {
	return o.Payload
}

func (o *GetAdminEmailConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAdminEmailConfigurationUnauthorized creates a GetAdminEmailConfigurationUnauthorized with default headers values
func NewGetAdminEmailConfigurationUnauthorized() *GetAdminEmailConfigurationUnauthorized {
	return &GetAdminEmailConfigurationUnauthorized{}
}

/*GetAdminEmailConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetAdminEmailConfigurationUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *GetAdminEmailConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] getAdminEmailConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAdminEmailConfigurationUnauthorized) ToJSONString() string {
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

func (o *GetAdminEmailConfigurationUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAdminEmailConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAdminEmailConfigurationInternalServerError creates a GetAdminEmailConfigurationInternalServerError with default headers values
func NewGetAdminEmailConfigurationInternalServerError() *GetAdminEmailConfigurationInternalServerError {
	return &GetAdminEmailConfigurationInternalServerError{}
}

/*GetAdminEmailConfigurationInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAdminEmailConfigurationInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *GetAdminEmailConfigurationInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/emails/configurations][%d] getAdminEmailConfigurationInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAdminEmailConfigurationInternalServerError) ToJSONString() string {
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

func (o *GetAdminEmailConfigurationInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *GetAdminEmailConfigurationInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
