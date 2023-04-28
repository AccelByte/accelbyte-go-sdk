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

// GetListCountryAgeRestrictionReader is a Reader for the GetListCountryAgeRestriction structure.
type GetListCountryAgeRestrictionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetListCountryAgeRestrictionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetListCountryAgeRestrictionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetListCountryAgeRestrictionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetListCountryAgeRestrictionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetListCountryAgeRestrictionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v2/admin/namespaces/{namespace}/countries/agerestrictions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetListCountryAgeRestrictionOK creates a GetListCountryAgeRestrictionOK with default headers values
func NewGetListCountryAgeRestrictionOK() *GetListCountryAgeRestrictionOK {
	return &GetListCountryAgeRestrictionOK{}
}

/*GetListCountryAgeRestrictionOK handles this case with default header values.

  OK
*/
type GetListCountryAgeRestrictionOK struct {
	Payload []*iamclientmodels.AccountcommonCountryAgeRestriction
}

func (o *GetListCountryAgeRestrictionOK) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/countries/agerestrictions][%d] getListCountryAgeRestrictionOK  %+v", 200, o.ToJSONString())
}

func (o *GetListCountryAgeRestrictionOK) ToJSONString() string {
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

func (o *GetListCountryAgeRestrictionOK) GetPayload() []*iamclientmodels.AccountcommonCountryAgeRestriction {
	return o.Payload
}

func (o *GetListCountryAgeRestrictionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetListCountryAgeRestrictionUnauthorized creates a GetListCountryAgeRestrictionUnauthorized with default headers values
func NewGetListCountryAgeRestrictionUnauthorized() *GetListCountryAgeRestrictionUnauthorized {
	return &GetListCountryAgeRestrictionUnauthorized{}
}

/*GetListCountryAgeRestrictionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetListCountryAgeRestrictionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetListCountryAgeRestrictionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/countries/agerestrictions][%d] getListCountryAgeRestrictionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetListCountryAgeRestrictionUnauthorized) ToJSONString() string {
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

func (o *GetListCountryAgeRestrictionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetListCountryAgeRestrictionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetListCountryAgeRestrictionForbidden creates a GetListCountryAgeRestrictionForbidden with default headers values
func NewGetListCountryAgeRestrictionForbidden() *GetListCountryAgeRestrictionForbidden {
	return &GetListCountryAgeRestrictionForbidden{}
}

/*GetListCountryAgeRestrictionForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetListCountryAgeRestrictionForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *GetListCountryAgeRestrictionForbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/countries/agerestrictions][%d] getListCountryAgeRestrictionForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetListCountryAgeRestrictionForbidden) ToJSONString() string {
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

func (o *GetListCountryAgeRestrictionForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *GetListCountryAgeRestrictionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetListCountryAgeRestrictionNotFound creates a GetListCountryAgeRestrictionNotFound with default headers values
func NewGetListCountryAgeRestrictionNotFound() *GetListCountryAgeRestrictionNotFound {
	return &GetListCountryAgeRestrictionNotFound{}
}

/*GetListCountryAgeRestrictionNotFound handles this case with default header values.

  Data not found
*/
type GetListCountryAgeRestrictionNotFound struct {
}

func (o *GetListCountryAgeRestrictionNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v2/admin/namespaces/{namespace}/countries/agerestrictions][%d] getListCountryAgeRestrictionNotFound ", 404)
}

func (o *GetListCountryAgeRestrictionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
