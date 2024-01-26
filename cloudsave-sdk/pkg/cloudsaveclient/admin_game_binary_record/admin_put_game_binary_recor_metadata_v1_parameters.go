// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_game_binary_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewAdminPutGameBinaryRecorMetadataV1Params creates a new AdminPutGameBinaryRecorMetadataV1Params object
// with the default values initialized.
func NewAdminPutGameBinaryRecorMetadataV1Params() *AdminPutGameBinaryRecorMetadataV1Params {
	var ()
	return &AdminPutGameBinaryRecorMetadataV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPutGameBinaryRecorMetadataV1ParamsWithTimeout creates a new AdminPutGameBinaryRecorMetadataV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPutGameBinaryRecorMetadataV1ParamsWithTimeout(timeout time.Duration) *AdminPutGameBinaryRecorMetadataV1Params {
	var ()
	return &AdminPutGameBinaryRecorMetadataV1Params{

		timeout: timeout,
	}
}

// NewAdminPutGameBinaryRecorMetadataV1ParamsWithContext creates a new AdminPutGameBinaryRecorMetadataV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPutGameBinaryRecorMetadataV1ParamsWithContext(ctx context.Context) *AdminPutGameBinaryRecorMetadataV1Params {
	var ()
	return &AdminPutGameBinaryRecorMetadataV1Params{

		Context: ctx,
	}
}

// NewAdminPutGameBinaryRecorMetadataV1ParamsWithHTTPClient creates a new AdminPutGameBinaryRecorMetadataV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPutGameBinaryRecorMetadataV1ParamsWithHTTPClient(client *http.Client) *AdminPutGameBinaryRecorMetadataV1Params {
	var ()
	return &AdminPutGameBinaryRecorMetadataV1Params{
		HTTPClient: client,
	}
}

/*AdminPutGameBinaryRecorMetadataV1Params contains all the parameters to send to the API endpoint
for the admin put game binary recor metadata v1 operation typically these are written to a http.Request
*/
type AdminPutGameBinaryRecorMetadataV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsGameBinaryRecordMetadataRequest
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) WithTimeout(timeout time.Duration) *AdminPutGameBinaryRecorMetadataV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) WithContext(ctx context.Context) *AdminPutGameBinaryRecorMetadataV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) WithHTTPClient(client *http.Client) *AdminPutGameBinaryRecorMetadataV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPutGameBinaryRecorMetadataV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) WithBody(body *cloudsaveclientmodels.ModelsGameBinaryRecordMetadataRequest) *AdminPutGameBinaryRecorMetadataV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) SetBody(body *cloudsaveclientmodels.ModelsGameBinaryRecordMetadataRequest) {
	o.Body = body
}

// WithKey adds the key to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) WithKey(key string) *AdminPutGameBinaryRecorMetadataV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) WithNamespace(namespace string) *AdminPutGameBinaryRecorMetadataV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin put game binary recor metadata v1 params
func (o *AdminPutGameBinaryRecorMetadataV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPutGameBinaryRecorMetadataV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
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
