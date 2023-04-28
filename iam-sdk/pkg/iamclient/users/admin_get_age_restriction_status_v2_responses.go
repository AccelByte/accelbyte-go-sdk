// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// AdminGetAgeRestrictionStatusV2Reader is a Reader for the AdminGetAgeRestrictionStatusV2 structure.
type AdminGetAgeRestrictionStatusV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAgeRestrictionStatusV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAgeRestrictionStatusV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetAgeRestrictionStatusV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetAgeRestrictionStatusV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetAgeRestrictionStatusV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v2/admin/namespaces/{namespace}/agerestrictions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAgeRestrictionStatusV2OK creates a AdminGetAgeRestrictionStatusV2OK with default headers values
func NewAdminGetAgeRestrictionStatusV2OK() *AdminGetAgeRestrictionStatusV2OK {
	return &AdminGetAgeRestrictionStatusV2OK{}
}

/*AdminGetAgeRestrictionStatusV2OK handles this case with default header values.

  OK
*/
type AdminGetAgeRestrictionStatusV2OK struct {
	Payload *iamclientmodels.ModelAgeRestrictionResponse
}

func (o *AdminGetAgeRestrictionStatusV2OK) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV2OK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAgeRestrictionStatusV2OK) ToJSONString() string {
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

func (o *AdminGetAgeRestrictionStatusV2OK) GetPayload() *iamclientmodels.ModelAgeRestrictionResponse {
	return o.Payload
}

func (o *AdminGetAgeRestrictionStatusV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelAgeRestrictionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAgeRestrictionStatusV2Unauthorized creates a AdminGetAgeRestrictionStatusV2Unauthorized with default headers values
func NewAdminGetAgeRestrictionStatusV2Unauthorized() *AdminGetAgeRestrictionStatusV2Unauthorized {
	return &AdminGetAgeRestrictionStatusV2Unauthorized{}
}

/*AdminGetAgeRestrictionStatusV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminGetAgeRestrictionStatusV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetAgeRestrictionStatusV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetAgeRestrictionStatusV2Unauthorized) ToJSONString() string {
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

func (o *AdminGetAgeRestrictionStatusV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetAgeRestrictionStatusV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetAgeRestrictionStatusV2Forbidden creates a AdminGetAgeRestrictionStatusV2Forbidden with default headers values
func NewAdminGetAgeRestrictionStatusV2Forbidden() *AdminGetAgeRestrictionStatusV2Forbidden {
	return &AdminGetAgeRestrictionStatusV2Forbidden{}
}

/*AdminGetAgeRestrictionStatusV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminGetAgeRestrictionStatusV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminGetAgeRestrictionStatusV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetAgeRestrictionStatusV2Forbidden) ToJSONString() string {
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

func (o *AdminGetAgeRestrictionStatusV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminGetAgeRestrictionStatusV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminGetAgeRestrictionStatusV2NotFound creates a AdminGetAgeRestrictionStatusV2NotFound with default headers values
func NewAdminGetAgeRestrictionStatusV2NotFound() *AdminGetAgeRestrictionStatusV2NotFound {
	return &AdminGetAgeRestrictionStatusV2NotFound{}
}

/*AdminGetAgeRestrictionStatusV2NotFound handles this case with default header values.

  Data not found
*/
type AdminGetAgeRestrictionStatusV2NotFound struct {
}

func (o *AdminGetAgeRestrictionStatusV2NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/agerestrictions][%d] adminGetAgeRestrictionStatusV2NotFound ", 404)
}

func (o *AdminGetAgeRestrictionStatusV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
