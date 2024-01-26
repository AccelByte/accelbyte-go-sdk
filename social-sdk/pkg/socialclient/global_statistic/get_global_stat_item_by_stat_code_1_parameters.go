// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_statistic

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

// NewGetGlobalStatItemByStatCode1Params creates a new GetGlobalStatItemByStatCode1Params object
// with the default values initialized.
func NewGetGlobalStatItemByStatCode1Params() *GetGlobalStatItemByStatCode1Params {
	var ()
	return &GetGlobalStatItemByStatCode1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGlobalStatItemByStatCode1ParamsWithTimeout creates a new GetGlobalStatItemByStatCode1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGlobalStatItemByStatCode1ParamsWithTimeout(timeout time.Duration) *GetGlobalStatItemByStatCode1Params {
	var ()
	return &GetGlobalStatItemByStatCode1Params{

		timeout: timeout,
	}
}

// NewGetGlobalStatItemByStatCode1ParamsWithContext creates a new GetGlobalStatItemByStatCode1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetGlobalStatItemByStatCode1ParamsWithContext(ctx context.Context) *GetGlobalStatItemByStatCode1Params {
	var ()
	return &GetGlobalStatItemByStatCode1Params{

		Context: ctx,
	}
}

// NewGetGlobalStatItemByStatCode1ParamsWithHTTPClient creates a new GetGlobalStatItemByStatCode1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGlobalStatItemByStatCode1ParamsWithHTTPClient(client *http.Client) *GetGlobalStatItemByStatCode1Params {
	var ()
	return &GetGlobalStatItemByStatCode1Params{
		HTTPClient: client,
	}
}

/*GetGlobalStatItemByStatCode1Params contains all the parameters to send to the API endpoint
for the get global stat item by stat code 1 operation typically these are written to a http.Request
*/
type GetGlobalStatItemByStatCode1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat Code

	*/
	StatCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) WithTimeout(timeout time.Duration) *GetGlobalStatItemByStatCode1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) WithContext(ctx context.Context) *GetGlobalStatItemByStatCode1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) WithHTTPClient(client *http.Client) *GetGlobalStatItemByStatCode1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGlobalStatItemByStatCode1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) WithNamespace(namespace string) *GetGlobalStatItemByStatCode1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) WithStatCode(statCode string) *GetGlobalStatItemByStatCode1Params {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the get global stat item by stat code 1 params
func (o *GetGlobalStatItemByStatCode1Params) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WriteToRequest writes these params to a swagger request
func (o *GetGlobalStatItemByStatCode1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
