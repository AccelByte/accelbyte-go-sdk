// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package namespace

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

// NewGetNamespaceParams creates a new GetNamespaceParams object
// with the default values initialized.
func NewGetNamespaceParams() *GetNamespaceParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetNamespaceParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetNamespaceParamsWithTimeout creates a new GetNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetNamespaceParamsWithTimeout(timeout time.Duration) *GetNamespaceParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetNamespaceParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetNamespaceParamsWithContext creates a new GetNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetNamespaceParamsWithContext(ctx context.Context) *GetNamespaceParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetNamespaceParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetNamespaceParamsWithHTTPClient creates a new GetNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetNamespaceParamsWithHTTPClient(client *http.Client) *GetNamespaceParams {
	var (
		activeOnlyDefault = bool(false)
	)
	return &GetNamespaceParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetNamespaceParams contains all the parameters to send to the API endpoint
for the get namespace operation typically these are written to a http.Request
*/
type GetNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*ActiveOnly
	  only retrieves active namespaces

	*/
	ActiveOnly *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get namespace params
func (o *GetNamespaceParams) WithTimeout(timeout time.Duration) *GetNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get namespace params
func (o *GetNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get namespace params
func (o *GetNamespaceParams) WithContext(ctx context.Context) *GetNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get namespace params
func (o *GetNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get namespace params
func (o *GetNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get namespace params
func (o *GetNamespaceParams) WithHTTPClient(client *http.Client) *GetNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get namespace params
func (o *GetNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get namespace params
func (o *GetNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetNamespaceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get namespace params
func (o *GetNamespaceParams) WithNamespace(namespace string) *GetNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get namespace params
func (o *GetNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the get namespace params
func (o *GetNamespaceParams) WithActiveOnly(activeOnly *bool) *GetNamespaceParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get namespace params
func (o *GetNamespaceParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WriteToRequest writes these params to a swagger request
func (o *GetNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
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
