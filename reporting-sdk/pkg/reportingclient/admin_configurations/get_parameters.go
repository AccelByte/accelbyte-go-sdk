// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_configurations

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

// Get the enum in GetParams
const (
	GetAllConstant       = "all"
	GetExtensionConstant = "extension"
)

// NewGetParams creates a new GetParams object
// with the default values initialized.
func NewGetParams() *GetParams {
	var ()
	return &GetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetParamsWithTimeout creates a new GetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetParamsWithTimeout(timeout time.Duration) *GetParams {
	var ()
	return &GetParams{

		timeout: timeout,
	}
}

// NewGetParamsWithContext creates a new GetParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetParamsWithContext(ctx context.Context) *GetParams {
	var ()
	return &GetParams{

		Context: ctx,
	}
}

// NewGetParamsWithHTTPClient creates a new GetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetParamsWithHTTPClient(client *http.Client) *GetParams {
	var ()
	return &GetParams{
		HTTPClient: client,
	}
}

/*GetParams contains all the parameters to send to the API endpoint
for the get operation typically these are written to a http.Request
*/
type GetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Category
	    configuration category flag.
				set this to 'all' to retrieve all category configurations
				set this to 'extension' to retrieve [EXTENSION] category configurations
				leave it blank to retrieve core categories [UGC,USER,CHAT] configurations


	*/
	Category *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get params
func (o *GetParams) WithTimeout(timeout time.Duration) *GetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get params
func (o *GetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get params
func (o *GetParams) WithContext(ctx context.Context) *GetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get params
func (o *GetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get params
func (o *GetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get params
func (o *GetParams) WithHTTPClient(client *http.Client) *GetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get params
func (o *GetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get params
func (o *GetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get params
func (o *GetParams) WithNamespace(namespace string) *GetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get params
func (o *GetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCategory adds the category to the get params
func (o *GetParams) WithCategory(category *string) *GetParams {
	o.SetCategory(category)
	return o
}

// SetCategory adds the category to the get params
func (o *GetParams) SetCategory(category *string) {
	o.Category = category
}

// WriteToRequest writes these params to a swagger request
func (o *GetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Category != nil {

		// query param category
		var qrCategory string
		if o.Category != nil {
			qrCategory = *o.Category
		}
		qCategory := qrCategory
		if qCategory != "" {
			if err := r.SetQueryParam("category", qCategory); err != nil {
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
