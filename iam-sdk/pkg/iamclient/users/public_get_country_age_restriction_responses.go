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

// PublicGetCountryAgeRestrictionReader is a Reader for the PublicGetCountryAgeRestriction structure.
type PublicGetCountryAgeRestrictionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetCountryAgeRestrictionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetCountryAgeRestrictionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetCountryAgeRestrictionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetCountryAgeRestrictionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetCountryAgeRestrictionOK creates a PublicGetCountryAgeRestrictionOK with default headers values
func NewPublicGetCountryAgeRestrictionOK() *PublicGetCountryAgeRestrictionOK {
	return &PublicGetCountryAgeRestrictionOK{}
}

/*PublicGetCountryAgeRestrictionOK handles this case with default header values.

  OK
*/
type PublicGetCountryAgeRestrictionOK struct {
	Payload *iamclientmodels.AccountcommonCountry
}

func (o *PublicGetCountryAgeRestrictionOK) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions][%d] publicGetCountryAgeRestrictionOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetCountryAgeRestrictionOK) ToJSONString() string {
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

func (o *PublicGetCountryAgeRestrictionOK) GetPayload() *iamclientmodels.AccountcommonCountry {
	return o.Payload
}

func (o *PublicGetCountryAgeRestrictionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonCountry)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetCountryAgeRestrictionUnauthorized creates a PublicGetCountryAgeRestrictionUnauthorized with default headers values
func NewPublicGetCountryAgeRestrictionUnauthorized() *PublicGetCountryAgeRestrictionUnauthorized {
	return &PublicGetCountryAgeRestrictionUnauthorized{}
}

/*PublicGetCountryAgeRestrictionUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetCountryAgeRestrictionUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetCountryAgeRestrictionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions][%d] publicGetCountryAgeRestrictionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetCountryAgeRestrictionUnauthorized) ToJSONString() string {
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

func (o *PublicGetCountryAgeRestrictionUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetCountryAgeRestrictionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetCountryAgeRestrictionNotFound creates a PublicGetCountryAgeRestrictionNotFound with default headers values
func NewPublicGetCountryAgeRestrictionNotFound() *PublicGetCountryAgeRestrictionNotFound {
	return &PublicGetCountryAgeRestrictionNotFound{}
}

/*PublicGetCountryAgeRestrictionNotFound handles this case with default header values.

  Data not found
*/
type PublicGetCountryAgeRestrictionNotFound struct {
}

func (o *PublicGetCountryAgeRestrictionNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions][%d] publicGetCountryAgeRestrictionNotFound ", 404)
}

func (o *PublicGetCountryAgeRestrictionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
