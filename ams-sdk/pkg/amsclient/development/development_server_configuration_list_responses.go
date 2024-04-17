// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package development

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// DevelopmentServerConfigurationListReader is a Reader for the DevelopmentServerConfigurationList structure.
type DevelopmentServerConfigurationListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DevelopmentServerConfigurationListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDevelopmentServerConfigurationListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDevelopmentServerConfigurationListUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDevelopmentServerConfigurationListForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDevelopmentServerConfigurationListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDevelopmentServerConfigurationListOK creates a DevelopmentServerConfigurationListOK with default headers values
func NewDevelopmentServerConfigurationListOK() *DevelopmentServerConfigurationListOK {
	return &DevelopmentServerConfigurationListOK{}
}

/*DevelopmentServerConfigurationListOK handles this case with default header values.

  development server configurations
*/
type DevelopmentServerConfigurationListOK struct {
	Payload *amsclientmodels.APIDevelopmentServerConfigurationListResponse
}

func (o *DevelopmentServerConfigurationListOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations][%d] developmentServerConfigurationListOK  %+v", 200, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationListOK) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationListOK) GetPayload() *amsclientmodels.APIDevelopmentServerConfigurationListResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIDevelopmentServerConfigurationListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationListUnauthorized creates a DevelopmentServerConfigurationListUnauthorized with default headers values
func NewDevelopmentServerConfigurationListUnauthorized() *DevelopmentServerConfigurationListUnauthorized {
	return &DevelopmentServerConfigurationListUnauthorized{}
}

/*DevelopmentServerConfigurationListUnauthorized handles this case with default header values.

  no authorization provided
*/
type DevelopmentServerConfigurationListUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationListUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations][%d] developmentServerConfigurationListUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationListUnauthorized) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationListUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationListUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationListForbidden creates a DevelopmentServerConfigurationListForbidden with default headers values
func NewDevelopmentServerConfigurationListForbidden() *DevelopmentServerConfigurationListForbidden {
	return &DevelopmentServerConfigurationListForbidden{}
}

/*DevelopmentServerConfigurationListForbidden handles this case with default header values.

  insufficient permissions
*/
type DevelopmentServerConfigurationListForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationListForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations][%d] developmentServerConfigurationListForbidden  %+v", 403, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationListForbidden) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationListForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationListForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationListInternalServerError creates a DevelopmentServerConfigurationListInternalServerError with default headers values
func NewDevelopmentServerConfigurationListInternalServerError() *DevelopmentServerConfigurationListInternalServerError {
	return &DevelopmentServerConfigurationListInternalServerError{}
}

/*DevelopmentServerConfigurationListInternalServerError handles this case with default header values.

  internal server error
*/
type DevelopmentServerConfigurationListInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationListInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/development/server-configurations][%d] developmentServerConfigurationListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationListInternalServerError) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationListInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
