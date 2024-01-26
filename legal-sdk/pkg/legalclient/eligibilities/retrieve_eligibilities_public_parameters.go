// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eligibilities

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewRetrieveEligibilitiesPublicParams creates a new RetrieveEligibilitiesPublicParams object
// with the default values initialized.
func NewRetrieveEligibilitiesPublicParams() *RetrieveEligibilitiesPublicParams {
	var ()
	return &RetrieveEligibilitiesPublicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveEligibilitiesPublicParamsWithTimeout creates a new RetrieveEligibilitiesPublicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveEligibilitiesPublicParamsWithTimeout(timeout time.Duration) *RetrieveEligibilitiesPublicParams {
	var ()
	return &RetrieveEligibilitiesPublicParams{

		timeout: timeout,
	}
}

// NewRetrieveEligibilitiesPublicParamsWithContext creates a new RetrieveEligibilitiesPublicParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveEligibilitiesPublicParamsWithContext(ctx context.Context) *RetrieveEligibilitiesPublicParams {
	var ()
	return &RetrieveEligibilitiesPublicParams{

		Context: ctx,
	}
}

// NewRetrieveEligibilitiesPublicParamsWithHTTPClient creates a new RetrieveEligibilitiesPublicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveEligibilitiesPublicParamsWithHTTPClient(client *http.Client) *RetrieveEligibilitiesPublicParams {
	var ()
	return &RetrieveEligibilitiesPublicParams{
		HTTPClient: client,
	}
}

/*RetrieveEligibilitiesPublicParams contains all the parameters to send to the API endpoint
for the retrieve eligibilities public operation typically these are written to a http.Request
*/
type RetrieveEligibilitiesPublicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) WithTimeout(timeout time.Duration) *RetrieveEligibilitiesPublicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) WithContext(ctx context.Context) *RetrieveEligibilitiesPublicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) WithHTTPClient(client *http.Client) *RetrieveEligibilitiesPublicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveEligibilitiesPublicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) WithNamespace(namespace string) *RetrieveEligibilitiesPublicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve eligibilities public params
func (o *RetrieveEligibilitiesPublicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveEligibilitiesPublicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
