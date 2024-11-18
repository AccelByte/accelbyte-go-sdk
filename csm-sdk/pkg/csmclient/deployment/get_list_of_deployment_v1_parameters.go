// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package deployment

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

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// NewGetListOfDeploymentV1Params creates a new GetListOfDeploymentV1Params object
// with the default values initialized.
func NewGetListOfDeploymentV1Params() *GetListOfDeploymentV1Params {
	var ()
	return &GetListOfDeploymentV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetListOfDeploymentV1ParamsWithTimeout creates a new GetListOfDeploymentV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetListOfDeploymentV1ParamsWithTimeout(timeout time.Duration) *GetListOfDeploymentV1Params {
	var ()
	return &GetListOfDeploymentV1Params{

		timeout: timeout,
	}
}

// NewGetListOfDeploymentV1ParamsWithContext creates a new GetListOfDeploymentV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetListOfDeploymentV1ParamsWithContext(ctx context.Context) *GetListOfDeploymentV1Params {
	var ()
	return &GetListOfDeploymentV1Params{

		Context: ctx,
	}
}

// NewGetListOfDeploymentV1ParamsWithHTTPClient creates a new GetListOfDeploymentV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetListOfDeploymentV1ParamsWithHTTPClient(client *http.Client) *GetListOfDeploymentV1Params {
	var ()
	return &GetListOfDeploymentV1Params{
		HTTPClient: client,
	}
}

/*GetListOfDeploymentV1Params contains all the parameters to send to the API endpoint
for the get list of deployment v1 operation typically these are written to a http.Request
*/
type GetListOfDeploymentV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.GeneratedGetDeploymentListV1Request
	/*Namespace
	  Game Name

	*/
	Namespace string
	/*Limit
	  Limit

	*/
	Limit *int64
	/*Offset
	  Offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) WithTimeout(timeout time.Duration) *GetListOfDeploymentV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) WithContext(ctx context.Context) *GetListOfDeploymentV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) WithHTTPClient(client *http.Client) *GetListOfDeploymentV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetListOfDeploymentV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) WithBody(body *csmclientmodels.GeneratedGetDeploymentListV1Request) *GetListOfDeploymentV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) SetBody(body *csmclientmodels.GeneratedGetDeploymentListV1Request) {
	o.Body = body
}

// WithNamespace adds the namespace to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) WithNamespace(namespace string) *GetListOfDeploymentV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) WithLimit(limit *int64) *GetListOfDeploymentV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) WithOffset(offset *int64) *GetListOfDeploymentV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get list of deployment v1 params
func (o *GetListOfDeploymentV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetListOfDeploymentV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
