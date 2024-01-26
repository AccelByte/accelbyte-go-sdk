// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// NewGetListGroupByIDsV2Params creates a new GetListGroupByIDsV2Params object
// with the default values initialized.
func NewGetListGroupByIDsV2Params() *GetListGroupByIDsV2Params {
	var ()
	return &GetListGroupByIDsV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetListGroupByIDsV2ParamsWithTimeout creates a new GetListGroupByIDsV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetListGroupByIDsV2ParamsWithTimeout(timeout time.Duration) *GetListGroupByIDsV2Params {
	var ()
	return &GetListGroupByIDsV2Params{

		timeout: timeout,
	}
}

// NewGetListGroupByIDsV2ParamsWithContext creates a new GetListGroupByIDsV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetListGroupByIDsV2ParamsWithContext(ctx context.Context) *GetListGroupByIDsV2Params {
	var ()
	return &GetListGroupByIDsV2Params{

		Context: ctx,
	}
}

// NewGetListGroupByIDsV2ParamsWithHTTPClient creates a new GetListGroupByIDsV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetListGroupByIDsV2ParamsWithHTTPClient(client *http.Client) *GetListGroupByIDsV2Params {
	var ()
	return &GetListGroupByIDsV2Params{
		HTTPClient: client,
	}
}

/*GetListGroupByIDsV2Params contains all the parameters to send to the API endpoint
for the get list group by i ds v2 operation typically these are written to a http.Request
*/
type GetListGroupByIDsV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *groupclientmodels.ModelsGetGroupListRequestV2
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) WithTimeout(timeout time.Duration) *GetListGroupByIDsV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) WithContext(ctx context.Context) *GetListGroupByIDsV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) WithHTTPClient(client *http.Client) *GetListGroupByIDsV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetListGroupByIDsV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) WithBody(body *groupclientmodels.ModelsGetGroupListRequestV2) *GetListGroupByIDsV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) SetBody(body *groupclientmodels.ModelsGetGroupListRequestV2) {
	o.Body = body
}

// WithNamespace adds the namespace to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) WithNamespace(namespace string) *GetListGroupByIDsV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get list group by i ds v2 params
func (o *GetListGroupByIDsV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetListGroupByIDsV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
