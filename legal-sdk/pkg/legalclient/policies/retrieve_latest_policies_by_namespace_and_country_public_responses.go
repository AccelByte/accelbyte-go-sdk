// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies

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

// RetrieveLatestPoliciesByNamespaceAndCountryPublicReader is a Reader for the RetrieveLatestPoliciesByNamespaceAndCountryPublic structure.
type RetrieveLatestPoliciesByNamespaceAndCountryPublicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveLatestPoliciesByNamespaceAndCountryPublicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/public/policies/namespaces/{namespace}/countries/{countryCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublicOK creates a RetrieveLatestPoliciesByNamespaceAndCountryPublicOK with default headers values
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublicOK() *RetrieveLatestPoliciesByNamespaceAndCountryPublicOK {
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublicOK{}
}

/*RetrieveLatestPoliciesByNamespaceAndCountryPublicOK handles this case with default header values.

  successful operation
*/
type RetrieveLatestPoliciesByNamespaceAndCountryPublicOK struct {
	Payload []*legalclientmodels.RetrievePolicyPublicResponse
}

func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicOK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/policies/namespaces/{namespace}/countries/{countryCode}][%d] retrieveLatestPoliciesByNamespaceAndCountryPublicOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicOK) ToJSONString() string {
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

func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicOK) GetPayload() []*legalclientmodels.RetrievePolicyPublicResponse {
	return o.Payload
}

func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
