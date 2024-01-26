// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

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

// NewDeleteTiedStatParams creates a new DeleteTiedStatParams object
// with the default values initialized.
func NewDeleteTiedStatParams() *DeleteTiedStatParams {
	var ()
	return &DeleteTiedStatParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteTiedStatParamsWithTimeout creates a new DeleteTiedStatParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteTiedStatParamsWithTimeout(timeout time.Duration) *DeleteTiedStatParams {
	var ()
	return &DeleteTiedStatParams{

		timeout: timeout,
	}
}

// NewDeleteTiedStatParamsWithContext creates a new DeleteTiedStatParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteTiedStatParamsWithContext(ctx context.Context) *DeleteTiedStatParams {
	var ()
	return &DeleteTiedStatParams{

		Context: ctx,
	}
}

// NewDeleteTiedStatParamsWithHTTPClient creates a new DeleteTiedStatParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteTiedStatParamsWithHTTPClient(client *http.Client) *DeleteTiedStatParams {
	var ()
	return &DeleteTiedStatParams{
		HTTPClient: client,
	}
}

/*DeleteTiedStatParams contains all the parameters to send to the API endpoint
for the delete tied stat operation typically these are written to a http.Request
*/
type DeleteTiedStatParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat code

	*/
	StatCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete tied stat params
func (o *DeleteTiedStatParams) WithTimeout(timeout time.Duration) *DeleteTiedStatParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete tied stat params
func (o *DeleteTiedStatParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete tied stat params
func (o *DeleteTiedStatParams) WithContext(ctx context.Context) *DeleteTiedStatParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete tied stat params
func (o *DeleteTiedStatParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete tied stat params
func (o *DeleteTiedStatParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete tied stat params
func (o *DeleteTiedStatParams) WithHTTPClient(client *http.Client) *DeleteTiedStatParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete tied stat params
func (o *DeleteTiedStatParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete tied stat params
func (o *DeleteTiedStatParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteTiedStatParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete tied stat params
func (o *DeleteTiedStatParams) WithNamespace(namespace string) *DeleteTiedStatParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete tied stat params
func (o *DeleteTiedStatParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the delete tied stat params
func (o *DeleteTiedStatParams) WithStatCode(statCode string) *DeleteTiedStatParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the delete tied stat params
func (o *DeleteTiedStatParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteTiedStatParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param statCode
	if err := r.SetPathParam("statCode", o.StatCode); err != nil {
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
