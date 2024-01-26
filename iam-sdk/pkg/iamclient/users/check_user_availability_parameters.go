// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewCheckUserAvailabilityParams creates a new CheckUserAvailabilityParams object
// with the default values initialized.
func NewCheckUserAvailabilityParams() *CheckUserAvailabilityParams {
	var ()
	return &CheckUserAvailabilityParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCheckUserAvailabilityParamsWithTimeout creates a new CheckUserAvailabilityParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCheckUserAvailabilityParamsWithTimeout(timeout time.Duration) *CheckUserAvailabilityParams {
	var ()
	return &CheckUserAvailabilityParams{

		timeout: timeout,
	}
}

// NewCheckUserAvailabilityParamsWithContext creates a new CheckUserAvailabilityParams object
// with the default values initialized, and the ability to set a context for a request
func NewCheckUserAvailabilityParamsWithContext(ctx context.Context) *CheckUserAvailabilityParams {
	var ()
	return &CheckUserAvailabilityParams{

		Context: ctx,
	}
}

// NewCheckUserAvailabilityParamsWithHTTPClient creates a new CheckUserAvailabilityParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCheckUserAvailabilityParamsWithHTTPClient(client *http.Client) *CheckUserAvailabilityParams {
	var ()
	return &CheckUserAvailabilityParams{
		HTTPClient: client,
	}
}

/*CheckUserAvailabilityParams contains all the parameters to send to the API endpoint
for the check user availability operation typically these are written to a http.Request
*/
type CheckUserAvailabilityParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Field
	  field name that want to be checked

	*/
	Field string
	/*Query
	  query or value that want to be checked

	*/
	Query string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the check user availability params
func (o *CheckUserAvailabilityParams) WithTimeout(timeout time.Duration) *CheckUserAvailabilityParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the check user availability params
func (o *CheckUserAvailabilityParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the check user availability params
func (o *CheckUserAvailabilityParams) WithContext(ctx context.Context) *CheckUserAvailabilityParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the check user availability params
func (o *CheckUserAvailabilityParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the check user availability params
func (o *CheckUserAvailabilityParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the check user availability params
func (o *CheckUserAvailabilityParams) WithHTTPClient(client *http.Client) *CheckUserAvailabilityParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the check user availability params
func (o *CheckUserAvailabilityParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the check user availability params
func (o *CheckUserAvailabilityParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CheckUserAvailabilityParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the check user availability params
func (o *CheckUserAvailabilityParams) WithNamespace(namespace string) *CheckUserAvailabilityParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the check user availability params
func (o *CheckUserAvailabilityParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithField adds the field to the check user availability params
func (o *CheckUserAvailabilityParams) WithField(field string) *CheckUserAvailabilityParams {
	o.SetField(field)
	return o
}

// SetField adds the field to the check user availability params
func (o *CheckUserAvailabilityParams) SetField(field string) {
	o.Field = field
}

// WithQuery adds the query to the check user availability params
func (o *CheckUserAvailabilityParams) WithQuery(query string) *CheckUserAvailabilityParams {
	o.SetQuery(query)
	return o
}

// SetQuery adds the query to the check user availability params
func (o *CheckUserAvailabilityParams) SetQuery(query string) {
	o.Query = query
}

// WriteToRequest writes these params to a swagger request
func (o *CheckUserAvailabilityParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param field
	qrField := o.Field
	qField := qrField
	if qField != "" {
		if err := r.SetQueryParam("field", qField); err != nil {
			return err
		}
	}

	// query param query
	qrQuery := o.Query
	qQuery := qrQuery
	if qQuery != "" {
		if err := r.SetQueryParam("query", qQuery); err != nil {
			return err
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
