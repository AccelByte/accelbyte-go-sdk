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
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveLatestPoliciesParamsWithTimeout creates a new RetrieveLatestPoliciesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveLatestPoliciesParamsWithTimeout(timeout time.Duration) *RetrieveLatestPoliciesParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesParams{
		VisibleOnly: &visibleOnlyDefault,

		timeout: timeout,
	}
}

// NewRetrieveLatestPoliciesParamsWithContext creates a new RetrieveLatestPoliciesParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveLatestPoliciesParamsWithContext(ctx context.Context) *RetrieveLatestPoliciesParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesParams{
		VisibleOnly: &visibleOnlyDefault,

		Context: ctx,
	}
}

// NewRetrieveLatestPoliciesParamsWithHTTPClient creates a new RetrieveLatestPoliciesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveLatestPoliciesParamsWithHTTPClient(client *http.Client) *RetrieveLatestPoliciesParams {
	var (
		visibleOnlyDefault = bool(false)
	)
	return &RetrieveLatestPoliciesParams{
		VisibleOnly: &visibleOnlyDefault,
		HTTPClient:  client,
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
	/*VisibleOnly*/
	VisibleOnly *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
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

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveLatestPoliciesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
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

// WithVisibleOnly adds the visibleOnly to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) WithVisibleOnly(visibleOnly *bool) *RetrieveLatestPoliciesParams {
	o.SetVisibleOnly(visibleOnly)
	return o
}

// SetVisibleOnly adds the visibleOnly to the retrieve latest policies params
func (o *RetrieveLatestPoliciesParams) SetVisibleOnly(visibleOnly *bool) {
	o.VisibleOnly = visibleOnly
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

	if o.VisibleOnly != nil {

		// query param visibleOnly
		var qrVisibleOnly bool
		if o.VisibleOnly != nil {
			qrVisibleOnly = *o.VisibleOnly
		}
		qVisibleOnly := swag.FormatBool(qrVisibleOnly)
		if qVisibleOnly != "" {
			if err := r.SetQueryParam("visibleOnly", qVisibleOnly); err != nil {
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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
