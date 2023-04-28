// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// RetrievePolicyCountryReader is a Reader for the RetrievePolicyCountry structure.
type RetrievePolicyCountryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrievePolicyCountryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrievePolicyCountryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrievePolicyCountryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrievePolicyCountryOK creates a RetrievePolicyCountryOK with default headers values
func NewRetrievePolicyCountryOK() *RetrievePolicyCountryOK {
	return &RetrievePolicyCountryOK{}
}

/*RetrievePolicyCountryOK handles this case with default header values.

  successful operation
*/
type RetrievePolicyCountryOK struct {
	Payload *legalclientmodels.RetrievePolicyResponse
}

func (o *RetrievePolicyCountryOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}][%d] retrievePolicyCountryOK  %+v", 200, o.ToJSONString())
}

func (o *RetrievePolicyCountryOK) ToJSONString() string {
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

func (o *RetrievePolicyCountryOK) GetPayload() *legalclientmodels.RetrievePolicyResponse {
	return o.Payload
}

func (o *RetrievePolicyCountryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.RetrievePolicyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrievePolicyCountryNotFound creates a RetrievePolicyCountryNotFound with default headers values
func NewRetrievePolicyCountryNotFound() *RetrievePolicyCountryNotFound {
	return &RetrievePolicyCountryNotFound{}
}

/*RetrievePolicyCountryNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40041</td><td>errors.net.accelbyte.platform.legal.policy_not_found</td></tr></table>
*/
type RetrievePolicyCountryNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrievePolicyCountryNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}][%d] retrievePolicyCountryNotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrievePolicyCountryNotFound) ToJSONString() string {
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

func (o *RetrievePolicyCountryNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrievePolicyCountryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
