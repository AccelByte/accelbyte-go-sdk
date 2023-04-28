// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// Get the enum in RetrieveLatestPoliciesParams
const (
	RetrieveLatestPoliciesLEGALDOCUMENTTYPEConstant       = "LEGAL_DOCUMENT_TYPE"
	RetrieveLatestPoliciesMARKETINGPREFERENCETYPEConstant = "MARKETING_PREFERENCE_TYPE"
)

// NewRetrieveLatestPoliciesParams creates a new RetrieveLatestPoliciesParams object
// with the default values initialized.
func NewRetrieveLatestPoliciesParams() *RetrieveLatestPoliciesParams {
	var ()
	return &RetrieveLatestPoliciesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveLatestPoliciesParamsWithTimeout creates a new RetrieveLatestPoliciesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveLatestPoliciesParamsWithTimeout(timeout time.Duration) *RetrieveLatestPoliciesParams {
	var ()
	return &RetrieveLatestPoliciesParams{

		timeout: timeout,
	}
}

// NewRetrieveLatestPoliciesParamsWithContext creates a new RetrieveLatestPoliciesParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveLatestPoliciesParamsWithContext(ctx context.Context) *RetrieveLatestPoliciesParams {
	var ()
	return &RetrieveLatestPoliciesParams{

		Context: ctx,
	}
}

// NewRetrieveLatestPoliciesParamsWithHTTPClient creates a new RetrieveLatestPoliciesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveLatestPoliciesParamsWithHTTPClient(client *http.Client) *RetrieveLatestPoliciesParams {
	var ()
	return &RetrieveLatestPoliciesParams{
		HTTPClient: client,
	}
}

/*RetrieveLatestPoliciesParams contains all the parameters to send to the API endpoint
for the retrieve latest policies operation typically these are written to a http.Request
*/
type RetrieveLatestPoliciesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CountryCode
	  Country Code

	*/
	CountryCode string
	/*DefaultOnEmpty
	  Default On Empty

	*/
	DefaultOnEmpty *bool
	/*PolicyType
	  Policy Type

	*/
	PolicyType *string
	/*Tags
	  tags, separate multiple value by commas parameter

	*/
	Tags *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) WithTimeout(timeout time.Duration) *RetrieveLatestPoliciesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) WithContext(ctx context.Context) *RetrieveLatestPoliciesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) WithHTTPClient(client *http.Client) *RetrieveLatestPoliciesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCountryCode adds the countryCode to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) WithCountryCode(countryCode string) *RetrieveLatestPoliciesParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithDefaultOnEmpty adds the defaultOnEmpty to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) WithDefaultOnEmpty(defaultOnEmpty *bool) *RetrieveLatestPoliciesParams {
	o.SetDefaultOnEmpty(defaultOnEmpty)
	return o
}

// SetDefaultOnEmpty adds the defaultOnEmpty to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetDefaultOnEmpty(defaultOnEmpty *bool) {
	o.DefaultOnEmpty = defaultOnEmpty
}

// WithPolicyType adds the policyType to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) WithPolicyType(policyType *string) *RetrieveLatestPoliciesParams {
	o.SetPolicyType(policyType)
	return o
}

// SetPolicyType adds the policyType to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetPolicyType(policyType *string) {
	o.PolicyType = policyType
}

// WithTags adds the tags to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) WithTags(tags *string) *RetrieveLatestPoliciesParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetTags(tags *string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveLatestPoliciesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param countryCode
	if err := r.SetPathParam("countryCode", o.CountryCode); err != nil {
		return err
	}

	if o.DefaultOnEmpty != nil {

		// query param defaultOnEmpty
		var qrDefaultOnEmpty bool
		if o.DefaultOnEmpty != nil {
			qrDefaultOnEmpty = *o.DefaultOnEmpty
		}
		qDefaultOnEmpty := swag.FormatBool(qrDefaultOnEmpty)
		if qDefaultOnEmpty != "" {
			if err := r.SetQueryParam("defaultOnEmpty", qDefaultOnEmpty); err != nil {
				return err
			}
		}

	}

	if o.PolicyType != nil {

		// query param policyType
		var qrPolicyType string
		if o.PolicyType != nil {
			qrPolicyType = *o.PolicyType
		}
		qPolicyType := qrPolicyType
		if qPolicyType != "" {
			if err := r.SetQueryParam("policyType", qPolicyType); err != nil {
				return err
			}
		}

	}

	if o.Tags != nil {

		// query param tags
		var qrTags string
		if o.Tags != nil {
			qrTags = *o.Tags
		}
		qTags := qrTags
		if qTags != "" {
			if err := r.SetQueryParam("tags", qTags); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
