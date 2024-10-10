// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

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

// AdminBulkUpdateClientsV3Reader is a Reader for the AdminBulkUpdateClientsV3 structure.
type AdminBulkUpdateClientsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkUpdateClientsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminBulkUpdateClientsV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkUpdateClientsV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkUpdateClientsV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkUpdateClientsV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminBulkUpdateClientsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkUpdateClientsV3NoContent creates a AdminBulkUpdateClientsV3NoContent with default headers values
func NewAdminBulkUpdateClientsV3NoContent() *AdminBulkUpdateClientsV3NoContent {
	return &AdminBulkUpdateClientsV3NoContent{}
}

/*AdminBulkUpdateClientsV3NoContent handles this case with default header values.

  No Content
*/
type AdminBulkUpdateClientsV3NoContent struct {
}

func (o *AdminBulkUpdateClientsV3NoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/clients][%d] adminBulkUpdateClientsV3NoContent ", 204)
}

func (o *AdminBulkUpdateClientsV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminBulkUpdateClientsV3BadRequest creates a AdminBulkUpdateClientsV3BadRequest with default headers values
func NewAdminBulkUpdateClientsV3BadRequest() *AdminBulkUpdateClientsV3BadRequest {
	return &AdminBulkUpdateClientsV3BadRequest{}
}

/*AdminBulkUpdateClientsV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type AdminBulkUpdateClientsV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateClientsV3BadRequest) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/clients][%d] adminBulkUpdateClientsV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkUpdateClientsV3BadRequest) ToJSONString() string {
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

func (o *AdminBulkUpdateClientsV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateClientsV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateClientsV3Unauthorized creates a AdminBulkUpdateClientsV3Unauthorized with default headers values
func NewAdminBulkUpdateClientsV3Unauthorized() *AdminBulkUpdateClientsV3Unauthorized {
	return &AdminBulkUpdateClientsV3Unauthorized{}
}

/*AdminBulkUpdateClientsV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBulkUpdateClientsV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateClientsV3Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/clients][%d] adminBulkUpdateClientsV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkUpdateClientsV3Unauthorized) ToJSONString() string {
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

func (o *AdminBulkUpdateClientsV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateClientsV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateClientsV3Forbidden creates a AdminBulkUpdateClientsV3Forbidden with default headers values
func NewAdminBulkUpdateClientsV3Forbidden() *AdminBulkUpdateClientsV3Forbidden {
	return &AdminBulkUpdateClientsV3Forbidden{}
}

/*AdminBulkUpdateClientsV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminBulkUpdateClientsV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateClientsV3Forbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/clients][%d] adminBulkUpdateClientsV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkUpdateClientsV3Forbidden) ToJSONString() string {
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

func (o *AdminBulkUpdateClientsV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateClientsV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkUpdateClientsV3NotFound creates a AdminBulkUpdateClientsV3NotFound with default headers values
func NewAdminBulkUpdateClientsV3NotFound() *AdminBulkUpdateClientsV3NotFound {
	return &AdminBulkUpdateClientsV3NotFound{}
}

/*AdminBulkUpdateClientsV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10365</td><td>client not found</td></tr></table>
*/
type AdminBulkUpdateClientsV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminBulkUpdateClientsV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/clients][%d] adminBulkUpdateClientsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminBulkUpdateClientsV3NotFound) ToJSONString() string {
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

func (o *AdminBulkUpdateClientsV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminBulkUpdateClientsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
